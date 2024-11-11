RUNTIME?=docker
VERSION?=0.20.4

image:
	$(RUNTIME) build --pull -t docker.io/netways/showoff:$(VERSION) .
