#!/bin/sh

# Create project structure
mkdir ./q-assistant
cd ./q-assistant

# Clone all repositories
git clone git@github.com:Q-assistant/infrastructure.git
git clone git@github.com:Q-assistant/dialog.git
git clone git@github.com:Q-assistant/sessions.git
git clone git@github.com:Q-assistant/identity.git
git clone git@github.com:Q-assistant/expression.git
git clone git@github.com:Q-assistant/cli.git
git clone git@github.com:Q-assistant/skills.git

# Download Makefile that is able to build all binaries
curl https://raw.githubusercontent.com/Q-assistant/documentation/master/Makefile -o ./Makefile

# Download script that is able to spawn all the services and skills
curl https://raw.githubusercontent.com/Q-assistant/documentation/master/spawn.sh -o ./spawn.sh
curl -o- https://raw.githubusercontent.com/Q-assistant/documentation/master/term.sh -o ./term.sh

chmod +x ./spawn.sh
chmod +x ./term.sh

# Build services
make build

# Build skills
make build_skills

echo "==========================================================="
echo "Run: docker-compose -f ./infrastructure/docker-compose.yaml"
echo "Run: ./spawn.sh"
