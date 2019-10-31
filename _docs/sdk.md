---
title: SDK
subtitle: This document covers the functionality of the SDK
tags: [sdk]
---

![GitHub tag (latest SemVer pre-release)](https://img.shields.io/github/v/tag/q-assistant/sdk?include_prereleases&sort=semver&style=for-the-badge)

# Q SDK
Provides the tools needed to create a skill. 

## Usage

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