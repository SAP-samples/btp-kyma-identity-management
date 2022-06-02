# Prepare the Customer Subaccount

> Note: this step is optional and only needed if you haven't done the basis mission [Develop a Multitenant Extension Application in SAP BTP, Kyma Runtime](https://discovery-center.cloud.sap/missiondetail/3683/3726/).

The previous chapter explains how to run the script to prepare the provider subaccount and deploy the multitenant application Easy Franchise in this subaccount. In order to test the mission, we need now to set up the SAP S/4HANA Cloud system, create and configure the customer subaccount to consume the data coming from the SAP S/4HANA Cloud system. 

## 1. Prepare the SAP S/4HANA Cloud System
To use an SAP S/4HANA Cloud system, you have to connect our application to this SAP S/4HANA Cloud system. From all the functionality offered by SAP S/4HANA Cloud, we only need access to the BusinessPartner OData V2 Rest API.

For more details, see: 
* [Enable the Business Partner OData V2 Rest API in an S/4HANA Cloud system](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/appendix/enable-odata-of-s4hana/README.md)
* [APIs for Business Partner](https://help.sap.com/viewer/44e06f22436c43e582db6ccd5250e29b/2020.000/en-US/9fca825858239244e10000000a4450e5.html)

## 2. Prepare the Subaccount in SAP BTP
In our scenario, we assume that the SAP partner is taking over the configuration of the consumer subaccount as this is often the case.
> Note: In your business scenario, you can give the customer system admins access to the subaccount so that they can configure the destination, for example. To do that, add their users and give them the right role collection.

Before starting with the onboarding of the customer, an SAP partner will typically need to request some information. Here is an overview of the data requested from the SAP partner:
* Name and logo of the company
* Name and email address of a mentor coordinator
* Details of mentors

Here are the steps needed:
1. [Create a Consumer Subaccount](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/test-customer-onboarding/create-consumer-subaccount/README.md)
1. [Configure a Destination](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/test-customer-onboarding/configure-destination/README.md)
1. [Subscribe to the Easy Franchise Application](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/test-customer-onboarding/subscribe-easyfranchise-app/README.md)
1. [Manage Users](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/test-customer-onboarding/manage-users/README.md)
1. [Run the Application](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/test-customer-onboarding/run-application/README.md)
