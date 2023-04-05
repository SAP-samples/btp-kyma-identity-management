# Prepare the Customer Subaccount

> Note: this step is optional and only needed if you haven't done the basis mission [Develop a Multitenant Extension Application in SAP BTP, Kyma Runtime](https://discovery-center.cloud.sap/missiondetail/3683/3726/).

The previous scripts install the provider subaccount and deploy the multitenant application Easy Franchise. In order to test the scenario, we need now to set up the SAP S/4HANA Cloud system and the customer subaccount and configure it to consume the data coming from the SAP S/4HANA Cloud system. 

## 1. Prepare SAP S/4HANA Cloud System
You can either use SAP S/4HANA Cloud to run our application or you can use our mock server, if you do not have or do not want to use a real SAP S/4HANA Cloud system. This section describes both options.

To use an SAP S/4HANA Cloud system, you have to connect the Easy Franchise application to this SAP S/4HANA Cloud system. From all the functionality offered by SAP S/4HANA Cloud, we only need access to BusinessPartner OData V2 Rest API. For more details, see: 
* [Enable the Business Partner OData V2 Rest API in an S/4HANA Cloud system](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/appendix/enable-odata-of-s4hana/README.md)
* [APIs for Business Partner](https://help.sap.com/viewer/44e06f22436c43e582db6ccd5250e29b/2020.000/en-US/9fca825858239244e10000000a4450e5.html)

To use the mock server, see [How to use the Business Partner Mock Server](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/appendix/business-partner-mock/README.md).

## 2. Prepare the Subaccount in SAP BTP
In our scenario, we assume that the SAP partner is taking over the configuration of the consumer subaccount as this is often the case.
> Note: In your business scenario, you can of course give the customer system admin access to the subaccount so that they can configure the destination, for example. You can do it by adding the users and giving them the right role collection.

Before starting with the onboarding of the customer, an SAP partner will typically need to request some information. Here is an overview of the data requested from the SAP partner:
* Name and logo of the company
* Name and email address of a mentor coordinator
* Details of mentors

Follow these steps:
* [Configure a Destination](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/test-customer-onboarding/configure-destination/README.md)
* [Run the Application](https://github.com/SAP-samples/btp-kyma-multitenant-extension/blob/main/documentation/test-customer-onboarding/run-application/README.md)
