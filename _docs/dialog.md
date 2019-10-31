---
title: Dialog
subtitle: This document describes the functionality of the Dialog service
tags: [service, dialog]
---

![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/q-assistant/dialog?sort=semver&style=for-the-badge)  

The Dialog service is the service an input device communicates with.  
Text or Audio input will be sent to [Dialogflow](https://dialogflow.com/){: target="_blank" } which returns an [Intent](https://cloud.google.com/dialogflow/docs/intents-overview){: target="_blank" }, this in turn will be matched with a skill, and if a matching skill is found it will be triggered.

All services communicate with the [gRPC](https://grpc.io/){: target="_blank" } protocol.      

_dialog.proto_
```
syntax = "proto3";
package proto;

import "google/protobuf/struct.proto";

service DialogService {
    rpc Stream (StreamDialogRequest) returns (stream Dialog);
    rpc Text (TextDialogRequest) returns (Dialog);
    rpc Audio (AudioDialogRequest) returns (Dialog);
}

message StreamDialogRequest {
}

message TextDialogRequest {
    string sentence = 1;
    string device_id = 2;
}

message AudioDialogRequest {
    bytes input_audio = 1;
    string device_id = 2;
}

message Dialog {
    string vendor = 1;
    string skill = 2;
    string command = 3;

    google.protobuf.Struct parameters = 4;

    string text = 5;
    string query = 6;
    float confidence = 7;
    bool all_required_params_present = 8;
}
```

All protobuf messages can be found [here](https://github.com/Q-assistant/proto){: target="_blank" }.
