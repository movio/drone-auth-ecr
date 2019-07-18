#!/bin/bash

eval $(aws ecr get-login --region ${PLUGIN_REGION} --registry-ids ${PLUGIN_REGISTRY_ID} | sed 's|https://||')
docker pull ${PLUGIN_ECR_IMAGE}