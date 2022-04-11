#!/bin/make

.PHONY: all
all: dev-install

.PHONY: install
install:
	poetry install --no-dev

.PHONY: dev-install
dev-install:
	poetry install
	poetry run pre-commit install --install-hooks

.PHONY: clean
clean:
	poetry env remove

.PHONY: test
test:
	poetry run molecule test --all

.PHONY: lint
lint:
	poetry run ansible-lint

.PHONY: update
update:
	poetry update
	poetry run pre-commit autoupdate
