docker-coder-base-build:
	docker image pull ubuntu:24.04
	docker buildx build -t ryanblunden/coder-base:$(version) . -f docker/base.Dockerfile --platform linux/arm/v7,linux/arm64/v8,linux/amd64

docker-coder-base-push:
	docker image push ryanblunden/coder-base:$(version)

docker-coder-python-build:
	docker image pull python:3.13
	docker buildx build -t ryanblunden/coder-python:$(version) . -f docker/python.Dockerfile --platform linux/arm/v7,linux/arm64/v8,linux/amd64

docker-coder-python-push:
	docker image push ryanblunden/coder-python:$(version)
