.PHONY: all build push

all: build push

build:
	shipwright build -t $(shell git describe --tags)

push:
	shipwright push -e timefairy/{phoenix,phonegap}
