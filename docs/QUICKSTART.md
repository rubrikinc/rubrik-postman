Quick Start Guide: Rubrik Postman

1. Copy the `Rubrik - Sample Environment` and give it a name that pertains to the specific Rubrik cluster that will be administered.

2. Edit the new environment and change the `rubrik_ip` variable from `X.X.X.X` to the IP address or hostname of the Rubrik Cluster to be administered.

3. Change the environment to the new environment that was created.

4. Edit each Collection and go to the`Authorization` tab.
   * Set the `Type` to `Basic Auth`.
   * Set the `Username` and `Password` to a valid user in the Rubrik cluster to be administered.

5. Test the connection to the Rubrik cluster by issuing the `Get Cluster Status` in the `v1 REST API` collection.

## Known Issues

The Swagger conversion process results in URLs with `:id` in them. This is actually a Postman variable that is listed in the parameters and is usually set to `me`. Use the `GENERATE CODE SNIPPETS` feature of Postman to view the proper syntax of the URL.

<img src="https://user-images.githubusercontent.com/8610203/53531442-da28a100-3ab8-11e9-9821-1cecef993c6e.png">
<img src="https://user-images.githubusercontent.com/8610203/53531444-da28a100-3ab8-11e9-9c42-a8a83d72bde4.png">
