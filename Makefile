DC_RUN=docker-compose run --rm maker
default: build

install:
	yarn install

build:
	$(DC_RUN) build

upgrade:
	yarn upgrade
	make build

tag:
	git tag `date +'%Y.%m.%d'` -m `date +'v%Y.%m.%d'`

publish:
	git push --tags
	npm version from-git
	npm publish

.SILENT:
.PHONY: build
