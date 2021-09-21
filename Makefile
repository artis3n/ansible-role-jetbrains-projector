#!/bin/make

.PHONY: all
all: dev-install

.PHONY: codespace-install
codespace-install:
	sudo apt-get update
	sudo add-apt-repository -y ppa:deadsnakes/ppa
	sudo apt install -y python3.9
	sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
	sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 2
	make dev-install

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
	pipenv run molecule test

.PHONY: lint
lint:
	pipenv run yamllint .
	pipenv run ansible-lint
