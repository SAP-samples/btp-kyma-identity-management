# Easy Franchise: Enrich a Kyma-Based Multitenant Application with Additional Identity Features

<!--- Register repository https://api.reuse.software/register, then add REUSE badge:
[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/REPO-NAME)](https://api.reuse.software/info/github.com/SAP-samples/REPO-NAME)
-->

> Important information: The content of this GitHub repository has been created as source for the [Enrich a Kyma based multitenant application with new identity features](https://discovery-center.cloud.sap/protected/index.html#/missiondetail/4000/4207/) mission at SAP Discovery Center. So, we recommend using directly the mission in the SAP Discovery Center for a better experience.

## Description
This mission explains how to enrich a Kyma-based multitenant application with additional identity features. It is related to the mission [Develop a Multitenant Extension Application in SAP BTP, Kyma Runtime](https://discovery-center.cloud.sap/missiondetail/3683/3726/) and extends it by focusing on identity topics like identity management via SAP Cloud Identity Services, custom identity provider and principal propagation.

As a result, in this mission everything will be based on the multitenant application called Easy Franchise, which is a multitenant application running on the Kyma environment of the SAP Business Technology Platform (SAP BTP) extending SAP S/4HANA Cloud. We highly recommend you to have a look at the above mentioned mission where you can find there all the necessary details. Therefore, we will not spend so much time here on explaining the application. We will rather focus on enriching it with new features.

For the sake of simplicity, our team has taken some compromize compared to a real application. So, don't use this application productively.

Here is an overview diagram of the Easy Franchise application:
![](https://raw.githubusercontent.com/SAP-samples/btp-kyma-multitenant-extension/main/documentation/images/easyfranchise-diagrams/Slide4.jpeg)

The repository has been devided in 2 sections:
* [documentation](./documentation/README.md): Here you will find the content of the mission, explaining in detail how to enrich the existing application Easy Franchise.
* [code](./code/README.md): Here you will find the code and the deployment files of the multitenant application Easy Franchise and a folder [setup](./code/setup) where you can find one script to set up the required SAP BTP environment and a second script to deploy the Easy Franchise application automatically.

## Who Is This Mission For?

The business scenario of this mission has been created with the SAP partner as focus persona. But this is of course not exclusively relevant for SAP partners and can be useful for every person looking for details on how to enrich a multitenant application running on Kyma with new identity features. 
As mentioned before, we highly recommend to start with the mission [Develop a Multitenant Extension Application in SAP BTP, Kyma Runtime](https://discovery-center.cloud.sap/missiondetail/3683/3726/) as we are expecting some knowledge (for example, Kyma, SAP BTP, and so on) to run this mission focusing on identity. As we are focusing on advanced topics, this mission is mainly suitable for experienced developers on SAP BTP. 

## Focus Topics of the Mission

The mission focuses on the following aspects:
- Identity Management via the SAP Cloud Identity Services
- Implementation of custom identity provider
- Configuration of principal propagation

## Requirements

You can find all requirements to execute the mission in the [Make Sure the Prerequisites Are Fulfilled](./documentation/discover/prerequisites/README.md) section.

## Known Issues

The tutorial is provided on the "as-is" basis. Currently, there are no known issues for the project.

## How to Get Support?

Check if you find an answer in the [Troubleshooting](./documentation/troubleshooting/README.md) section.

Create an issue to get support or to report a bug [in the respective repository](https://github.com/SAP-samples/btp-kyma-identity-management/issues/new/choose) or ask us a question directly in the mission at the SAP Discovery Center, in the _Conversations_ section of the Project Board of the mission.

## How to Provide Feedback?

Have you found the enablement material easy to understand? Are you missing something? What can we improve? [Share your feedback](https://github.com/SAP-samples/btp-kyma-identity-management/issues/new/choose), so that we can improve the documentation and provide a better material for future stakeholders.

## What's New

Check the details of our last [releases](./documentation/discover/whats-new/README.md).

## License

Copyright (c) 2022 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.
