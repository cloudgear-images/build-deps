all: build

build: 
	docker build -t cloudgear/build-deps:14.04 .
	docker tag cloudgear/build-deps:14.04 cloudgear/build-deps:latest