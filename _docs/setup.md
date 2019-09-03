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

**Enter latitude and longitude:**  
This is used for location services. Try to get the most accurate coordinates as possible. 

**Google Project ID**

**Google Credentials**

**Google TTP Language Code**

**Google TTP Voice Name**

**Google TTP Voice Speed**

**Google TTP Voice Pitch**


