---
title: Setup
subtitle: This document covers the setup and options of Q
author: sara
tags: [setup]
---

## Steps 

### Configure Dialogflow  
Create a dialogflow account or login: [https://console.dialogflow.com](https://console.dialogflow.com ){:target="_blank"}  

![alt text](https://q-assistant.github.io/uploads/doc/02.png)
  **Default Language**: "English - en"  
  **Default Time Zone**: your timezone  
  **Google Project**: "Create a new Google project" 
 
#### Downloading IAM file
![alt text](https://q-assistant.github.io/uploads/doc/03.png)  
Select your agent and click the cog icon next to it.  
In the General tab there is a section "GOOGLE PROJECT",  
Click on the project ID link.  

1. go to IAM & admin
2. click on service accounts
3. click on "+ CREATE SERVICE ACCOUNT" at the top
4. give it a name
5. click on the create button  
![alt text](https://q-assistant.github.io/uploads/doc/04.png)
6. select a role, type dialogflow in the filter
7. select Dialogflow API Admin
8. repeat step 6 and select Dialogflow API Client  
![alt text](https://q-assistant.github.io/uploads/doc/05.png)
9. click on "+ CREATE KEY", choose key type JSON and click "CREATE".  
   This downloads the service account json file.  
![alt text](https://q-assistant.github.io/uploads/doc/06.png)

### Running the docker containers
Make sure the infrastructure is running by executing: ```cd ./infrastructure && docker-compose up```.  

### Configure Q
Run ```q system configure``` and answer the questions.  

### Settings
During the configuration the following questions will be asked:  

- **latitude and longitude:**  
  This is used for location services. Try to get the most accurate coordinates as possible. 

- **Google Project ID**  
  Can be found in the General tab of your agent settings.  

- **Google Credentials**
  
   
**Speech settings, these all have a default value.**  

- **Google TTP Language Code**  
en_US

- **Google TTP Voice Name**  
en-US-Wavenet-D  

- **Google TTP Voice Speed**  
1  

- **Google TTP Voice Pitch**  
0

To customize it go to go to [https://cloud.google.com/text-to-speech/](https://cloud.google.com/text-to-speech/).  
Configure the voice to your liking and copy the settings 
