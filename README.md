# rhies_Deployment
This repository contains the tool to deploy the Interoperability Layer for the RHIES project.

## RHIES Project
The purpose of Rwandan Health Information Exchange System (RHIES) project is to develop a system that allows for information- exchange within electronic medical record systems and to develop linkage solutions for generating EMR data directly to HMIS in the specific use case of HIV Case based surveillance (CBS). RHIES is a set of applications that work together in the Open Health Information Exchange (OpenHIE) architecture to serve point-of-service systems, like EMRs, DHIS2, National ID database and laboratory information system.

## deploy on the environment

### build and run
1. While on the **deployment** folder, run the command **docker-compose build && docker-compose up -d**

2. Once the installation process finished, make sur that your **openHim** instance is running properly

3. got to each **deployment/x_config/** folder

4. Edit **the config files** to fit your needs 

5. Start every thing by using **docker-compose --compatibility up**

6. finish the configuration process on **openHim**

7. test everything

8. go rest ;)

## Licence ###
Proprietary.

## Created and Developed By
[Savics SRL](https://savics.org)

## In Collaboration with
[Rwanda Biomedical Centre (RBC)](https://www.rbc.gov.rw/)

## Main Contributors
* Developers: Gilbert AGBODAMAKOU, Anatole ABE, Mamadou Ben TRAORE
