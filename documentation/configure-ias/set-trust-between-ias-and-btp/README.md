# Set Trust between Identity Authentication Tenant and a Subaccount in SAP BTP
For more details, please refer to [Manually Establish Trust and Federation Between UAA and Identity Authentication](https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/7c6aa87459764b179aeccadccd4f91f3.html#loio7c6aa87459764b179aeccadccd4f91f3) in the SAP official documentation.

## Import Identity Authentication Service Metadata in SAP BTP Subaccount
1. Open your Identity Authentication tenant and navigate to **Applications & Ressources** > **Tenant Settings**. Then select **SAML 2.0 Configuration**.
![](images/tenant-settings.png) 

1. Press **Download Metadata File**.
![](images/download-metadata.png) 

1. Open the customer SAP BTP Subaccount (e.g. city-scooter) and navigate to **Security** > **Trust Configuration** and click the button **New Trust Configuration**.
![](images/new-trust-config.png)

1. Then upload the metadata file previously downloaded.
![](images/upload-metadata.png)  

1. Fill out fields **Name**, **Description** and **Link Text for User Logon**. Then **Parse** the details and **Save** the details.
![](images/add-metadata-details.png)

1. By saving the new trust configuration, a new category named **Custom** should be added. Verify that the new configuration for the IAS tenant is now visible in this category and that it's active.
![](images/check-new-active-trust-config.png)

## Import SAP BTP Subaccount Metadata in Identity Authentication Service
1. In your SAP BTP subaccount, download the SAML metadata data of your subaccount by clicking **SAML Metadata** under **Security** > **Trust Configuration**. 
![](images/download-btp-metadata.png) 

1. Open your Identity Authentication tenant and navigate to **Applications & Ressources** > **Applications** and press the button **Create**. 
![](images/create-ias-app.png) 

1. Then fill the fields **Application Display Name** and **Application Type**. Click save.
![](images/add-ias-app-details.png)

1. In the newly created application, click **SAML 2.0 Configuration**.
![](images/ias-app-saml.png)

1. Then upload metadata file downloaded in SAP BTP subaccount previously.
![](images/import-btp-metadata.png)

1. Navigate to **Default Name ID Format**.
![](images/configure-default-name-id-format.png)

1.  Select **E-Mail** as unique attribute and click **Save**. 
![](images/select-email-format.png)

1. Navigate to **Assertion Attributes**.
![](images/select-assertion-attributes.png)

1. Add the new attribute **Groups** from the dropdown-list. Note that the attribute **Groups** is case sensitive but automatically filled as **groups** (first letter is in lower case). Please change it to **Groups** then click **Save** button.
![](images/add-attribute-group.png)

1. Navigate to **Subject Name Identifier**.
![](images/select-subject-name-identifier.png)

1. Select **Login Name** in the dropdown box and click **Save**. This means that the the Identity Authentication sends the **Login Name** as `name ID` in the SAML 2.0 assertions, by which the applicaiton can identity the user. Depending on your Identity Authentication Service configuration, you might need a different mapping. For more details please refer to [Configure the Subject Name Identifier Sent to the Application](https://help.sap.com/docs/IDENTITY_AUTHENTICATION/6d6d63354d1242d185ab4830fc04feb1/1d020e3a3ba34c43a71fde70bfa6419a.html)
![](images/select-login-name.png)

Congratulation! You have now established trust between the customer IAS tenant and its dedicated SAP BTP subaccount.

<!-- > **_NOTE:_** After completing the trust setup, when accessing the application, there is one more IdP entry with text which you filled. To test user propagation, please always use that link for user login instead of other links (e.g. "Default Identity Provider").  -->
