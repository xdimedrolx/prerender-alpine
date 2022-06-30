IMAGE ?= xdimedrolx/prerender
VERSION ?= 6.5.0

.PHONY: build-and-push
build-and-push: build push

.PHONY: build
build:
	docker build -t $(IMAGE):$(VERSION) .

.PHONY: push
push:
	docker push $(IMAGE):$(VERSION)