#!/bin/sh -l

aws eks update-kubeconfig --name $1
helm template /etc/helm/charts/default-deployment --set "name=${2//\//-},namespace=$3,image=$4" | kubectl apply -f -
