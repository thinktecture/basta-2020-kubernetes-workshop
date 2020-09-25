#!/bin/bash

kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.1/cert-manager.crds.yaml

 helm repo add jetstack https://charts.jetstack.io
 helm repo update

 helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v1.0.1 