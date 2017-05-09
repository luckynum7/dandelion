TAG=$(shell git describe --tags)

.PHONY: all build push

all: build push

build:
	shipwright build -t ${TAG}

push:
	shipwright push -t ${TAG}
