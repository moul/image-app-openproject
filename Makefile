DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-openproject
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Openproject
DESCRIPTION =		Openproject
SOURCE_URL =		https://github.com/scaleway/image-app-openproject


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
