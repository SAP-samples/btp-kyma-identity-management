# Configure Communication Settings in SAP BTP
Once OAuth communication settings are configured in S/4HANA Cloud system, we need to create a destination in SAP BTP, which will uses user propagation for accessing business partner data from the S/4HANA Cloud system. 

1. Go to your SAP BTP subaccount and navigate to **Connectivity** > **Destination** and press the **New Destination** button.
![](images/new-destination.png)

1. Enter the following parameters:
    | Parameter | Value |
    | --- | --- |
    | Name | EasyFranchise_PrincipalPropagation <br>(Keep it like this as it will be referenced in the code later on.) |
    | Type | HTTP |
    |Description | Enter a meaningful description (optional). |
    | URL  | The URL of your S/4HANA Cloud system, e.g. https://my123456-api.s4hana.ondemand.com/ |
    | Proxy Type | Internet |
    | Authentication | OAuth2SAMLBearerAssertion |
    | Key Store Location | Leave empty, will be filled automatically. |
    | Key Store Password | Leave empty, will be filled automatically. |
    | Audience | The URL of your SAP S/4HANA Cloud account. To get it, log on to your SAP S/4HANA Cloud account. Select the profile picture. Then choose Settings and copy the value from the <Server> field. Add https:// to the beginning of this string, e.g. https://123456.s4hana.ondemand.com. This URL does not contain my123456-api, but only my123456.|
    | authnContextClassRef | urn:oasis:names:tc:SAML:2.0:ac:classes:X509 |
    | Client Key | The name of the communication user created previously in the SAP S/4HANA Cloud system, e.g COMM_USER_EASYFRANCHISE_OAUTH |
    | Token Service URL Type | Keep **Dedicated** selected |
    | Token Service URL | For this field, you need the part of the URL before /sap/... that you can copy from the **Communications Arrangements** application e.g. https://123456-api.s4hana.ondemand.com. See below note for more details.|
    | Token Service User | The same user as for **Client Key** parameter. |
    | Token Service Password | The password for the communication user. | 
    | nameIdFormat | On the right click **New Property**, and set the value to **urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified**|

    ![](images/14-destination-settings.png)

> **_NOTE:_**  Token Service URL. Open your communication arrangement, click **OAuth2.0 Details** and check your **Token Service URL**.
![](images/get-token-service-url.jpg)

