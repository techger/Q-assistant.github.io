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
Click on the service account link.  

### Running the docker containers
Make sure the infrastructure is running by executing: ```cd ./infrastructure && docker-compose up```.  

### Configure Q
Run ```q system configure``` and answer the questions.  

### Settings
During the configuration the following questions will be asked:  

**latitude and longitude:**  
This is used for location services. Try to get the most accurate coordinates as possible. 

**Google Project ID**  
Can be found in the General tab of your agent settings.  

**Google Credentials**
  
   
**Speech settings, these all have a default value.**  

**Google TTP Language Code**  
en_US

**Google TTP Voice Name**  
en-US-Wavenet-D  

**Google TTP Voice Speed**  
1  

**Google TTP Voice Pitch**  
0

To customize it go to go to [https://cloud.google.com/text-to-speech/](https://cloud.google.com/text-to-speech/).  
Configure the voice to your liking and copy the settings 
