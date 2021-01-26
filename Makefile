DC_RUN=docker-compose run --rm maker
NEW_TAG=$(shell date +%Y.%m.%d)
default: build

install:
	$(DC_RUN) yarn install

build:
	$(DC_RUN) /app/scripts/build.sh

upgrade:
	$(DC_RUN) yarn upgrade
	make build

tag:
	./scripts/tag.sh

publish:
	git push --tags
	npm publish

.SILENT:
.PHONY: build
