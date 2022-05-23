# Easy Franchise Components

This section contains all components that are needed to run and deploy the Easy Franchise application.
For more information around the Easy Franchise Application check out the [Discovery Center Mission](https://discovery-center.cloud.sap/missiondetail/3683/3726/) or the corresponding [Github repository](https://github.com/SAP-samples/btp-kyma-multitenant-extension)

- [deployment](deployment): Contains the dockerfiles as well as the deployment yaml files
    - [docker](deployment/docker): Docker definitions for all components
    - [k8s](deployment/k8s): All yaml files for the deployment to kyma
- [source](source): Contains the source code of the Easy Franchise application
    - [backend](source/backend): JAVA-based backend services that manage database, SAP S/4HANA Cloud system and the logic of the application
        - [Database Service](source/backend)
        - [Business Partner Service](source/backend/bp-service)
        - [Easy Franchise Service](source/backend/ef-service)
    - [email-service](source/email-service): node.js-based service that sends notifications
    - [ui](source/ui): vue.js-based user interface
    - [Approuter](source/approuter): node.js-based application router for authorization and authentication
    - [broker](source/broker): service that onboards/offboards new customers of the multitenant application
    - [business-partner-mock-server](source/business-partner-mock-server): service to simulate an SAP S/4HANA Cloud system if not available

