---
title: Commands
tags: [sdk, commands]
---

Skills can be triggered by a dialog.

{% highlight go %}
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
{% endhighlight %}