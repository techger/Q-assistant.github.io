---
title: Installation
subtitle: This document covers the setup of Q
author: edwin
tags: [setup]
---

### Install the dependencies  

- [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/){:target="_blank"}
- Infrastructure: ```git clone git@github.com:Q-assistant/infrastructure.git```
- Audio libraries: ```apt-get update && apt-get install libasound2-dev portaudio19-dev```  

### Install the CLI  

![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/q-assistant/cli?sort=semver)

Download the latest release [here](https://github.com/Q-assistant/cli/releases){:target="_blank"}.
```bash
tar xvfz ./linux_amd64.tar.gz  
mv q /usr/local/bin/q
```

Verify by running ```q version```, it should show the logo and installed version.  

![alt text](https://q-assistant.github.io/uploads/doc/01.png "q version")
