all: build

build: 
	docker build -t cloudgear/buildpack-deps:14.04 .
	docker tag cloudgear/buildpack-deps:14.04 cloudgear/buildpack-deps:latest