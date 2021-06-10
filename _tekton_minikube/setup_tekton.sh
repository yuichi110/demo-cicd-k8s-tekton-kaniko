#!/bin/bash
set -eu
dir_path=$(cd $(dirname $0); pwd)

echo '(1) install tekton'
echo '# kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml'
kubectl apply -f https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
echo

echo '(2) setup tekton'
echo '# kubectl apply -f setup -R'
kubectl apply -f setup -R
echo

echo '(3) Prepare pipeline'
echo '# kubectl apply -f pipeline -R'
kubectl apply -f pipeline -R
echo