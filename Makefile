#!/bin/make

.PHONY: all
all: dev-install

.PHONY: install
install:
	pipenv install

.PHONY: dev-install
dev-install:
	pipenv install --dev

.PHONY: clean
clean:
	pipenv --rm

.PHONY: test
test:
	pipenv run molecule test --all

.PHONY: lint
lint:
	pipenv run yamllint .
	pipenv run ansible-lint

.PHONY: update
update:
	pipenv update --dev
	pipenv run pre-commit autoupdate
