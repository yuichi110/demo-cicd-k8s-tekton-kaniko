#!/bin/bash
set -eu
dir_path=$(cd $(dirname $0); pwd)

USER=iyuichivm
TAG=test-kaniko

sed -e "s;__IMAGE__;redis:5.0.6-alpine3.10;g" ../../k8s/db/deployment.yml | kubectl apply -f -
sed -e "s;__IMAGE__;${USER}/demo-cicd-k8s-tekton-kaniko-back:${TAG};g" ../../k8s/back/deployment.yml | kubectl apply -f -
sed -e "s;__IMAGE__;${USER}/demo-cicd-k8s-tekton-kaniko-front:${TAG};g" ../../k8s/front/deployment.yml | kubectl apply -f -