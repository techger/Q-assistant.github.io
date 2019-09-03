---
title: Setup
subtitle: This document covers the setup and options of Q
author: sara
tags: [setup]
---

## Steps
1. Create a dialogflow account or login: https://console.dialogflow.com  
2. Create a new Agent  
![alt text](https://q-assistant.github.io/uploads/doc/02.png "q version")
  1. Default Language, select "English - en"
  2. Default Time Zone, select your timezone
  3. Google Project, Select "Create a new Google project"
3. Enable google api's: Cloud Text-to-Speech API
4. Download the google iam file
3. Make sure the infrastructure is running by executing: ```cd ./infrastructure && docker-compose up```.  
4. Run ```q system configure``` and answer the questions.  

## Settings
During the configuration the following questions will be asked:  

**Enter latitude and longitude:**  
This is used for location services. Try to get the most accurate coordinates as possible. 

**Google Project ID**

**Google Credentials**

**Google TTP Language Code**

**Google TTP Voice Name**

**Google TTP Voice Speed**

**Google TTP Voice Pitch**


