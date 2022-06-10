# Prepare Corporate Identiy Provider

In our example, we will use Microsoft Azure Active Directory as a corporate identity provider. You can of course use any other custom identity providers of your choice.

> Prerequisite: we assume that you have your own external identity provider. For more information on Microsoft Azure Active Directory, please check the [Identity and Access documentation](https://docs.microsoft.com/en-us/windows-server/identity/identity-and-access) at Microsoft.

## Create an Enterprise Application in the Corporate Identity Provider
1. Open Microsoft Azure Active Directory and navigate to **Enterprise Applications**.

1. Following the official documentation, create a new enterprise application for **City Scooter - Easy Franchise** to use the Microsoft Azure Active Directory as an identity provider. 
    SAP Identity Authentication service: In this scenario Identity Authentication acts as a proxy identity provider and Microsoft Azure Active Directory as the main authentication authority for the applications. The authentication requests sent to Identity Authentication are redirected to Microsoft Azure Active Directory.
