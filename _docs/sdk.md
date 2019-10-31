---
title: SDK
subtitle: This document covers the functionality of the SDK
tags: [sdk]
---

![GitHub tag (latest SemVer pre-release)](https://img.shields.io/github/v/tag/q-assistant/sdk?include_prereleases&sort=semver&style=for-the-badge)

# Q SDK
Provides the tools needed to create a skill. 

## Usage

## Commands
Skills can be triggered by a dialog.

```go
s := sdk.New(&sdk.Config{
		Skill:    "echo",
		Version:  version,
		CommandHandlers: []*sdk.CommandHandler{
			{Command: "echo", Handle: func(session *proto.Session, logger *logger.Logger, services *sdk.Services) {
                dialog := session.UserContext.Dialog

                if err := services.Expression.Talk(session, dialogText, false); err != nil {
                    logger.Error(err.Error())
                }
            }},
        },
})
```

## Events
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
## Mix 'n Match

## Skill settings

```go
var settings *sdk.SkillSettings

func createSettings() {
	settings = sdk.NewSkillSettings()

	group := sdk.NewSkillSettingGroup("general")
	group.Add(&sdk.SkillSettingItem{
		Key:   "dark_sky_secret",
		Label: "Dark Sky secret",
		Value: "",
		Type:  "string",
	})
	group.Add(&sdk.SkillSettingItem{
		Key:   "latitude",
		Label: "latitude",
		Value: "",
		Type:  "string",
	})
	group.Add(&sdk.SkillSettingItem{
		Key:   "longitude",
		Label: "longitude",
		Value: "",
		Type:  "string",
	})

	setting := sdk.NewSkillSetting("weather", sdk.SkillSettingTypeList, false)
	setting.AddGroup(group)
	settings.Add(setting)
}
```