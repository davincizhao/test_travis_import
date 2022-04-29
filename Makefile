INT_VERSION := $(shell grep int version.yml | cut -d ":" -f 2)

KUBE := $(shell grep kube version.yml | cut -d ":" -f 2 )



# One and kube_version are different.

all:
	@echo "INT VERSION"
	@echo $(INT_VERSION)
	@echo "kube version number"
	@echo $(KUBE)
	docker run  davincizhao/busybox:$(INT_VERSION)
	docker ps -a
