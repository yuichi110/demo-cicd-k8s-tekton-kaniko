#!/bin/bash
set -eu
dir_path=$(cd $(dirname $0); pwd)

echo '# kubectl apply -f dockerhub_secrets.yml'
kubectl apply -f dockerhub-secrets.yml
echo

echo '# kubectl apply -f build-contexts.yml'
kubectl apply -f build-contexts.yml
echo

echo '# kubectl replace --force -f build-images.yml'
kubectl replace --force -f build-images.yml
echo