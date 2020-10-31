DC_RUN=docker-compose run --rm maker
NEW_TAG=$(shell date +%Y.%m.%d)
default: build

install:
	yarn install

build:
	$(DC_RUN) /app/scripts/build.sh

upgrade:
	yarn upgrade
	make build

tag:
	./scripts/tag.sh

publish:
	git push --tags
	npm version from-git
	npm publish

.SILENT:
.PHONY: build
