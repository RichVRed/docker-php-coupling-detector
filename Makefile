TAG = rvannauker/php-coupling-detector
VERSION = 1.0.0
FILE_NAME = php-coupling-detector.dockerfile
DESTINATION = .
DEBUG_COMMAND = /bin/bash
MICROBADGE_HOOK_URL = https://hooks.microbadger.com/images/rvannauker/php-coupling-detector/r7jQ4CEkT41Vi13OW7X7_M5on6s=

default: build

build:
	docker build \
	       --build-arg BUILD_DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
	       --build-arg VCS_REF="$(git rev-parse --short HEAD)" \
	       --build-arg VERSION="$(VERSION)" \
	       --force-rm \
	       --tag "$(TAG):$(VERSION)" \
	       --file "$(FILE_NAME)" \
	       $$PWD

build_latest:
	docker build \
	       --build-arg BUILD_DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
	       --build-arg VCS_REF="$(git rev-parse --short HEAD)" \
	       --build-arg VERSION="latest" \
	       --force-rm \
	       --tag "$(TAG):latest" \
	       --file "$(FILE_NAME)" \
	       $$PWD

push:
	docker push $(TAG)

debug:
	docker run \
	       --rm \
	       --interactive \
	       "$(TAG)$(VERSION)" $(DEBUG_COMMAND)

run:
	@docker run \
	       --rm \
           --volume $$PWD:/workspace \
           --name "php-coupling-detector" \
           "$(TAG):$(VERSION)" detect $(DESTINATION) \
           --config-file=.php_cd \
           --format=dot

microbadge_hook:
	curl -X POST $(MICROBADGE_HOOK_URL)

release: build build_latest push microbadge_hook