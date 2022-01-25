#!/bin/sh -l

aws eks update-kubeconfig --name "$1"
helm template /etc/helm/charts/default-deployment --set "name=$2,namespace=$3,image=$4" | kubectl apply -f -

sleep 5

hostname=$(kubectl get service $2 --namespace $3 --output json | jq ".status.loadBalancer.ingress[0].hostname")
echo "::set-output name=hostname::$hostname"
