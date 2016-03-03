all: build

build:
	@docker build --tag=tacodata/docker-postgresql .

release: build
	@docker build --tag=tacodata/docker-postgresql:$(shell cat VERSION) .
