# Rubrik Postman Collections

- Website: https://www.getpostman.com/

<img src="https://www.getpostman.com/img/logos/postman/header-treatment.svg">

## Introduction

Postman is a free application for MacOS, Windows, Linux, and Chrome. It is used to explore APIs, build workflows, and share samples with customers and the team. It's especially handy for:

* Building dynamic variables to quickly use the Rubrik API across a multitude of environments.
* Performing a brief demo of one or more API endpoints to showcase functionality.
* Collecting information from a customer site without the need to install or maintain a development platform.

## Installation

Requirements: Postman v6.6.1 or higher has been successfully [installed](https://learning.getpostman.com/docs/postman/launching_postman/installation_and_updates#installing-the-postman-app).

1. Download the latest collection(s) from [GitHub releases](https://github.com/rubrikinc/rubrik-postman).

2. Import the collection JSON(s) that are applicable to your version of Rubrik.

   ```text
   Collation JSONs are named Rubrik -  <RCDM_VERSION> - <API_VERSION> REST API.postman_collection.json

   Where: 
      <CDM_VERSION> is the version of Rubrik Cloud Data Management that the collection was generated from.
      <API_VERSION> is the version of the Rubrik Cloud Data Management API that the collection references.
   ```

   Example: Rubrik -  v4.2.1-p1 - INTERNAL REST API.postman_collection.json
   
3. Import the `Rubrik - Sample Environment.postman_environment.json` environment JSON.

## Quick Start

1. Copy the `Rubrik - Sample Environment` and give it a name that pertains to the specific Rubrik cluster that will be administered.

2. Edit the new environment and change the `rubrik_ip` variable from `X.X.X.X` to the IP address or hostname of the Rubrik Cluster to be administered.

3. Change the environment to the new environment that was created.

4. Edit each Collection and go to the`Authorization` tab.
   * Set the `Type` to `Basic Auth`.
   * Set the `Username` and `Password` to a valid user in the Rubrik cluster to be administered.

5. Test the connection to the Rubrik cluster by issuing the `Get Cluster Status` in the `v1 REST API` collection.

## Documentation

* [Postman Documentation](https://learning.getpostman.com/)
* [Rubrik API Documentation](https://github.com/rubrikinc/api-documentation)

## Issues

* The Swagger conversion process results in URLs with `:id` in them. This is actually a Postman variable that is listed in the parameters and is usually set to `me`. Use the `GENERATE CODE SNIPPETS` feature of Postman to view the proper syntax of the URL.

<img src="https://github.com/rubrikinc/rubrik-postman/blob/master/images/GenerateCodeSnippets.png">
<img src="https://github.com/rubrikinc/rubrik-postman/blob/master/images/CodeSnippet.png">

