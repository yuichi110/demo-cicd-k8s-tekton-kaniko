#!/bin/bash
set -eu
dir_path=$(cd $(dirname $0); pwd)

echo '(1) setup tekton'
echo '# kubectl apply -f setup -R'
kubectl apply -f setup -R
echo

echo '(2) Prepare pipeline'
echo '# kubectl apply -f pipeline -R'
kubectl apply -f pipeline -R
echo