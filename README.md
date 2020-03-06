![cooltools](https://user-images.githubusercontent.com/26773170/76101378-54c5af80-5f9c-11ea-96c2-4504f661f69f.gif)

Operations toolbox in one Docker image.

https://hub.docker.com/r/deadishlabs/cooltools

# Usage

I generally use this image when I need some tooling inside of a Kubernetes cluster but do not want to install individual tools into already-running pods.

Install:

`kubectl create deployment cooltools --image=deadishlabs/cooltools:latest`

Use:

`kubectl exec -it deployment/cooltools bash`

Destroy:

`kubectl delete deployment cooltools`