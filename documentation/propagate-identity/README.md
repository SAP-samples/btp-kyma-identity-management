# Propagate the User Principal

In our scenario, the application Easy Franchise extends an SAP S/4HANA Cloud system. So far, in order to connect this system, we have created an SAP S/4HANA Cloud technical user that is saved in a destination of the application. This is often the way-to-go at the beginning of the development but usually going productive you want to know which user is doing some changes in your system. For that purpose, you can implement the propagation of user principal so you have a single sign-on in place.

This chapter describes how to configure principal propagation, using OAuth communication between a subaccount in SAP BTP with enabled SAP BTP, Kyma runtime to an SAP S/4HANA Cloud system. We will use the OAuth 2.0 SAML bearer assertion flow as OAuth mechanism.

Here are the steps needed for such an implementation:
1. [Set Trust Between SAP BTP and SAP S/4HANA Tenant Using Identity Authentication Service](./set-trust-between-btp-and-s4-via-ias/README.md)
1. [Get Trust Certificate from SAP BTP](./configure-oauth-communication/README.md)
1. [Configure Communication Settings in SAP S/4HANA Cloud](./configure-s4/README.md)
1. [Understand the Principal Propagation Authentication Flow](./run-app-with-principal-propagation/README.md)
1. [Configure Destination in SAP BTP to use Principal Propagation](./configure-destination/README.md)
1. [Manage End User Access for the EasyFranchise Application](./manage-end-users/README.md)
      
> **NOTE:** For more details, see [Configuration Tasks](https://help.sap.com/viewer/cca91383641e40ffbe03bdc78f00f681/Cloud/en-US/6e5e004b6553403486a03da53bfcaf4e.html) at SAP Help Portal. 
