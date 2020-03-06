![cooltools](https://user-images.githubusercontent.com/26773170/76101378-54c5af80-5f9c-11ea-96c2-4504f661f69f.gif)

Operations toolbox in one Docker image.

https://hub.docker.com/r/deadishlabs/cooltools

# Usage

## Kubernetes

I generally use this image when I need some tooling inside of a Kubernetes cluster but do not want to install individual tools into already-running pods.

Install:

`kubectl run cooltools --image=deadishlabs/cooltools:latest --generator=run-pod/v1`

Use:

`kubectl exec -it cooltools bash`

Destroy:

`kubectl delete pod cooltools`

## Local

Maybe you just need to run it locally on a machine that has Docker but not all of these other tools installed.

Install:

`docker run -d cooltools deadishlabs/cooltools:latest`

Use:

`docker exec -it cooltools bash`

Destroy:

`docker stop cooltools`