.PHONY: default
default: image ;

dockerfile:
	bash generate.sh

image:	dockerfile
	bash build.sh

