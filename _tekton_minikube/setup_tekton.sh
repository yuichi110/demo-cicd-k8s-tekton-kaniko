#!/bin/bash
set -eu
dir_path=$(cd $(dirname $0); pwd)

echo '(1) install tekton'
echo '# kubectl apply -f tekton-0.24.3-install.yaml'
kubectl apply -f tekton-0.24.3-install.yaml
echo

echo '(2) setup tekton'
echo '# kubectl apply -f setup -R'
kubectl apply -f setup -R
echo

echo '(3) install tekton dashboard'
echo '# kubectl apply -f tekton-dashboard-0.17.0-install.yaml'
kubectl apply -f tekton-dashboard-0.17.0-install.yaml
echo

echo '(3) Prepare pipeline'
echo '# kubectl apply -f pipeline -R'
kubectl apply -f pipeline -R
echo