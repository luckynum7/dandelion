.PHONY: all build push

all: build push

build:
	shipwright build

push:
	shipwright push -e timefairy/{phoenix,phonegap} -t $(shell git describe --tags)
