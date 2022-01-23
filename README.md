# deploy-action

GitHub Action for deploying Docker images to EKS

## Inputs

## `cluster`

**Required** EKS cluster name

## `name`

**Required** Deployment name

## `namespace`

**Required** Kubernetes namespace

## `image`

**Required** Docker image

## Example usage

uses: droitfintech/deploy-action@v1
with:
  cluster: 'my-cluster'
  name: 'hello-world'
  namespace: 'default'
  image: 'hello-world'
