# Welcome to the Q project

This page describes how to setup the project.

## What is Q?
Q aims to provide a framework to build your own assistant.  

## Setup
Download this file and execute it: [https://github.com/Q-assistant/documentation/blob/master/setup.sh](https://github.com/Q-assistant/documentation/blob/master/setup.sh)  
One-liner: ```curl -o- https://raw.githubusercontent.com/Q-assistant/documentation/master/setup.sh | bash```

## Running
Bring up the services: ```docker-compose -f ./infrastructure/docker-compose.yaml```  
Bring up Q: ```./spawn.sh```

## Developing
