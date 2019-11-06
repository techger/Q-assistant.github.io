---
title: Installation
subtitle: This document covers the setup of Q
tags: [installation, setup]
---

### Install the dependencies  

- [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/){:target="_blank"}
- Infrastructure: ```git clone git@github.com:Q-assistant/infrastructure.git```

1. The central server needs a fixed IP.  
1. Install docker.  
2. Run: ```docker-compose up -d```  
3. Go to http://{{server-ip}}:8500/ to see Consul's ui.  

### Agents
Agents take care of the installation process of components and skills.
Install 1 agent per device to be managed.  

*Download*
```bash
mkdir ~/.q && \
wget https://github.com/Q-assistant/agent/releases/download/edge/linux_amd64.tar.gz -O - | tar -xz -C ~/.q
```

*Install*
```bash
cd ~/.q
sudo ./agent -install \
-discovery-address={{server-ip}}:8500 \
-logger-address={{server-ip}}:5000 \
-broker-address={{server-ip}}:1883 && \
sudo systemctl enable q_agent.service && sudo systemctl start q_agent.service
```

On http://localhost:8500/ui/dc1/services you can see if the agent is up.  
You can click on the agent service to see all other agents if you installed more.  


### Install the CLI  
The CLI allows you to install the components and run several commands to interact with Q.  
Install the CLI on the server.
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/q-assistant/cli?sort=semver)

Download the latest release [here](https://github.com/Q-assistant/cli/releases){:target="_blank"}.
```bash
tar xvfz ./linux_amd64.tar.gz  
mv q /usr/local/bin/q
```

Verify by running ```q version```, it should show the logo and installed version.  

![alt text](https://q-assistant.github.io/uploads/doc/01.png "q version")
