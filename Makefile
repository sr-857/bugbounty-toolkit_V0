
.PHONY: all docker build shell submodules

all: docker

docker:
	docker build -t bugbounty-toolkit .

shell:
	docker run --rm -it -v "$$(pwd):/workspace" bugbounty-toolkit

submodules:
	./scripts/add_submodules.sh
