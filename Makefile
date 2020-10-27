IMAGE ?= iamjameshunt/replace
TAG   ?= v1

default: build

build:
	docker build -t $(IMAGE):$(TAG) .

push: build
	docker push $(IMAGE):$(TAG)
