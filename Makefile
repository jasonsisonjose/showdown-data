DC_RUN=docker-compose run --rm maker
default: build

build:
	$(DC_RUN) build

.SILENT:
.PHONY: build
