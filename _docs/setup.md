---
title: Setup
subtitle: This document covers the setup and options of Q
author: sara
tags: [setup]
---

## Steps
Create a dialogflow account or login: https://console.dialogflow.com  

### Configure Dialogflow  
![alt text](https://q-assistant.github.io/uploads/doc/02.png "q version")
  **Default Language**: "English - en"  
  **Default Time Zone**: your timezone  
  **Google Project**: "Create a new Google project"  

### Running the docker containers
- Make sure the infrastructure is running by executing: ```cd ./infrastructure && docker-compose up```.  

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


