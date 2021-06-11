#!/bin/bash
set -eu
dir_path=$(cd $(dirname $0); pwd)

echo '(1) install tekton'
echo '# kubectl apply -f install/tekton-0.24.3-install.yaml'
kubectl apply -f install/tekton-0.24.3-install.yaml
echo

echo '(2) install tekton dashboard'
echo '# kubectl apply -f install/tekton-dashboard-0.17.0-install.yaml'
kubectl apply -f install/tekton-dashboard-0.17.0-install.yaml
echo
