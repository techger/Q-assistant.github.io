---
title: Identity [WIP]
subtitle: This document describes the functionality of the Identity service
tags: [service, identity]
---

![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/q-assistant/identity?sort=semver)  

_This service is a work in progress_.  

The Identity service is the service where the Dialog service asks the identity of a user.  
An identity can be detected by a tag `[identity=edwin]` in the text command, or via audio.  

All services communicate with the [gRPC](https://grpc.io/){: target="_blank" } protocol.      

_identity.proto_
```
 
syntax = "proto3";
package proto;

service IdentityService {
    rpc Detect (DetectIdentityRequest) returns (Identity);
}

message DetectIdentityRequest {}

message Identity {

}
```

All protobuf messages can be found [here](https://github.com/Q-assistant/proto){: target="_blank" }.
