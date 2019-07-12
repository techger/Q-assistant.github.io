build: build_sessions build_identity build_dialog build_expression build_cli cp_files

build_sessions:
	@echo "building service: sessions"
	@cd sessions && make build

build_identity:
	@echo "building service: identity"
	@cd identity && make build

build_dialog:
	@echo "building service: dialog"
	@cd dialog && make build

build_expression:
	@echo "building service: expression"
	@cd expression && make build

build_cli:
	@echo "building cli"
	@cd cli && make build

build_skills:
	@echo "building skill: q"
	@cd skills/q && make build

	@echo "building skill: weather"
	@cd skills/weather && make build

cp_files:
	@cp dialog/.env dialog/bin/.env
	@cp expression/.env expression/bin/.env
