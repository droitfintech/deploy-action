# deploy-action

GitHub Action for deploying Docker images to EKS

## Inputs

### `kubeconfig`

**Required** Base64-encoded kubeconfig

### `name`

**Required** Deployment name

### `namespace`

**Optional** Kubernetes namespace

Default: _default_

### `image`

**Required** Docker image

## Outputs

### `hostname`

Service hostname

## Example usage

```
uses: droitfintech/deploy-action@v1
with:
  kubeconfig: ${{ secrets.KUBECONFIG }}
  name: hello-world
  image: 1234567890.dkr.ecr.us-east-1.amazonaws.com/hello-world:1.0
```
