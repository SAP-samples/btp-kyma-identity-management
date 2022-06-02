# Prepare the Corporate Identiy Provider

In our example, we will use Microsoft Azure Active Directory (AAD) as corporate IdP. You can of course use any other options to federate the customers users. 

> Prerequisite: we assume that you have your own external identity provider. For more information on Microsoft Azure Active Directory, please check the [official documentation](https://docs.microsoft.com/en-us/windows-server/identity/identity-and-access).

## Create an Enterprise Application in the Corporate IdP
1. Open Microsoft Azure Active Directory and navigate to **Enterprise Applications**.

1. Following the official documentation, create a new enterprise application for **City Scooter - Easy Franchise** to use AAD as identity provider. SAP Identity Authentication Service (IAS): In this scenario Identity Authentication acts as a proxy identity provider and Azure AD as the main authentication authority for the applications. The authentication requests sent to Identity Authentication are redirected to Azure AD.
