#!/usr/bin/env bash

IMAGE_NAME=workout_performance_sleep
IMAGE_LABEL=latest
ENVIRONMENT=env
DOCKER_FILE=Dockerfile

IMAGE_TAG="${ENVIRONMENT}/${IMAGE_NAME}:${IMAGE_LABEL}"

docker buildx build --platform linux/amd64 -t ${IMAGE_TAG} -f ${DOCKER_FILE} .
docker push ${IMAGE_TAG}
