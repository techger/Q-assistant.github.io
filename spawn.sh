#!/bin/sh

# services
x-terminal-emulator -e ./term "./sessions/bin/sessions"
x-terminal-emulator -e ./term "./identity/bin/identity"
x-terminal-emulator -e ./term "./dialog/bin/dialog"
x-terminal-emulator -e ./term "./expression/bin/expression"

# skills
x-terminal-emulator -e ./term "./skills/q/bin/q"
x-terminal-emulator -e ./term "./skills/weather/bin/weather"

echo "web ui's"
echo "============================================================="
echo "consul: http://localhost:8500"
echo "rabbitmq: http://localhost:15672, credentials: guest:guest"
echo "kibana: http://localhost:5601, credentials: elastic:changeme"