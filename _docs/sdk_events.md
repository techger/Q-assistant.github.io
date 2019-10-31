---
title: Events
tags: [sdk, events]
---

Below an example that subscribes to events of the locator service.  
```go
s := sdk.New(&sdk.Config{
		Skill:    "echo",
		Version:  version,
        EventHandlers: map[string]*sdk.EventHandler{
			"locator": {
				Events: "geofence:entered geofence:left",
				Handle: func(logger *logger.Logger, services *sdk.Services, evt *proto.Event) {
					switch evt.Kind.(type) {
					case *proto.Event_GeofenceEnteredEvent:
						event := evt.GetKind().(*proto.Event_GeofenceEnteredEvent)
						if err := services.Expression.Talk(nil, fmt.Sprintf("%s entered %s geofence.", event.GeofenceEnteredEvent.Asset.Id, event.GeofenceEnteredEvent.Geofence.Label), false); err != nil {
							logger.Error(err.Error())
						}
					case *proto.Event_GeofenceLeftEvent:
						event := evt.GetKind().(*proto.Event_GeofenceLeftEvent)
						if err := services.Expression.Talk(nil, fmt.Sprintf("%s left %s geofence.", event.GeofenceLeftEvent.Asset.Id, event.GeofenceLeftEvent.Geofence.Label), false); err != nil {
							logger.Error(err.Error())
						}
					}
				},
			},
		},
})
```