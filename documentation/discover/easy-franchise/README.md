# Discover the Easy Franchise Application

## Learn the Business Scenario

The SAP partner *Easy Franchise* wants to provide their customers *City Scooter* and *Bicycle Sharing* an application for managing their franchise business. The application is used by *City Scooter* and *Bicycle Sharing* employees to assign mentors to each new business partner. At the end of the process, the assigned mentor is informed and can start coaching/onboarding the new business partner (franchisee).

The SAP partner *Easy Franchise* implements the application as an SAP S/4HANA Cloud extension on SAP Business Technology Platform (SAP BTP). To reduce costs, the SAP partner decides to go for a multitenant approach so that multiple customers can buy and use the application.

Here is a high-level overview of the multitenant approach:

![](https://raw.githubusercontent.com/SAP-samples/btp-kyma-multitenant-extension/main/documentation/discover/business-story/images/Business-Concept-Multi-tenant.drawio.png)

## Solution Details

The SAP partner develops a Kyma-based multitenant application on SAP BTP.

All multitenant microservices of the application will run in the SAP BTP, Kyma runtime. In addition to that, the SAP partner uses an SAP HANA database to persist the data of the application. 

To manage customer-specific configuration, the partner creates a dedicated subaccount for each customer. Later on, the system admin of the customer gets access to the subaccount and can maintain the access details to the SAP S/4HANA Cloud tenant and manages the users of the application.

Here is a technical overview of the partner application:

![](https://raw.githubusercontent.com/SAP-samples/btp-kyma-multitenant-extension/main/documentation/images/kyma-diagrams-focus-components/Slide9.jpeg)

## Roles Involved

### On the Easy Franchise Partner Side

**Partner system admin**

* Onboards and offboards new customers (City Scooter, Bicycle Sharing, and others).
* Runs and monitors the partner application.

### On the Customer Side

**SAP S/4HANA Cloud manager**
* Creates/updates business partners of a customer in the SAP S/4HANA Cloud system.

**System admin**
* Provides following partner details in order to configure the application:
  * Identity provider metadata together with principal propagation configuration.
  * Details for mapping between groups and role collections.
  * Optional: if the connection is for an on-premise system, the system admin needs to install and configure Cloud Connector.
* If required, the system admin can get access to a dedicated subaccount, can configure the destination and can manage the user assignment in the subscriber account for the mentor coordinator(s).

**Mentor coordinator**
* Assigns mentors to business partners (franchisees).
* Gets email notification, when a new business partner is created in the SAP S/4HANA Cloud system.

**Mentor**
* Gets an email notification, when assigned as a mentor to a franchisee.

## Understand the Multitenancy Concept

Before starting the mission, make sure you have a good understanding of the [multitenancy concept](https://blogs.sap.com/2018/09/26/multitenancy-architecture-on-sap-cloud-platform-cloud-foundry-environment/) as the Easy Franchise application is multitenant. In general, multitenancy can be achieved in various ways. Here we use only one implementation example that in your case might be different based on your needs.

## Separation of Data

When having multiple customers that use the same multitenant application, the separation of the data is key. In our scenario, this is done by creating one schema/user for each customer during the onboarding. As soon as a customer is onboarded, the SaaS Provisioning service sends a request to the application broker, which provides the necessary API (callbacks). The broker will, for example, invoke the Database service to create a schema/user for the new customer.

![](https://raw.githubusercontent.com/SAP-samples/btp-kyma-multitenant-extension/main/documentation/images/easyfranchise-diagrams/Slide6.jpeg)

  Here is the explanation of the steps in the previous diagram:
  1. As soon as a customer is onboarded, the SaaS Registry triggers the onboarding process. A request with all information about the new tenant (for example, tenant ID and subdomain) in the body is sent to the application broker.
  1. The broker extracts the tenant ID and the subdomain out of the request body and triggers actions defined in the callbacks. In our case, the Database service is informed about the new onboarding.
  1. The Database service creates a new schema/user for the new customer. Standard tables and default configuration are automatically generated.


## Authentication Flow

Having the data separated, let's have a look on how to consume the right data for the right customer.

![](https://raw.githubusercontent.com/SAP-samples/btp-kyma-multitenant-extension/main/documentation/images/easyfranchise-diagrams/Slide5.jpeg)
  Here is the explanation of the steps in the previous diagram:
  1. An end user opens the application in a browser. The browser sends a request to the Approuter.
  1. The end user is redirected to the SAP Authorization and Trust Management service to log in.
  1. After a successful login, the SAP Authorization and Trust Management service sends a JWT token to the Approuter, which extracts the tenant ID. The tenant ID will be needed later to call the data from the right tenant.
  1. The Approuter redirects to UI.
  1. The UI sends a request to backend API via the Approuter.
  1. The Approuter injects the tenant ID in the request as a header and forwards the request to the Easy Franchise service.
  1. The Easy Franchise service receives request as an orchestrator and forwards it to the respective microservice including the tenant ID. Here, it's part of the URL, which makes it simpler to log or debug at development time.
  1. The Database service requests data from the respective tenant.
  1. The Business Partner service gets information from the destination in the respective subaccount and calls the SAP S/4HANA Cloud system.

## Customers Bringing Their SAP S/4HANA Cloud Systems

Each customer brings their own SAP S/4HANA Cloud system.
For each customer, a dedicated customer subaccount in the partners global account in SAP BTP is needed.
Within that subaccount, a destination needs to be created. This destination contains the SAP S/4HANA Cloud connection details. The Business Partner service makes use of the Destination service to read the destination from the subaccount of the accessing tenant. For more details, see [Multitenancy in the Destination Service](https://help.sap.com/viewer/cca91383641e40ffbe03bdc78f00f681/Cloud/en-US/4e07f250fe5d441cab09f69e22909198.html) in SAP Help Portal.