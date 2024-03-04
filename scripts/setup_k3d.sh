#!/bin/sh

echo 'Creating Kubernetes cluster...'
k3d cluster create iot-cluster

echo 'Creating Kubernetes namespaces...'
kubectl create namespace dev
kubectl create namespace argocd

echo 'Installing Argo CD'
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
