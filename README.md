# Rest_api
Simple rest server written in go.

## Introduction
The code in this repository contains a simple rest based api server written in go, Containerfile and a Helm chart which allows to deploy it to Kubernetes.


## How to use
This simple solution has been tested with minikube.

In order to deploy it run:

```
helm install <Name-of-deployment> ./helm_chart 
```

This will create a deployment with it's corresponding Service of type NodePort.
To access the rest api on your deployment in minikube run:

```
  export NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services rest-api-v1)
  export NODE_IP=$(kubectl get nodes --namespace default -o jsonpath="{.items[0].status.addresses[0].address}")
  echo http://$NODE_IP:$NODE_PORT
```
When accessing this resource in your browser you will get:

```
{
	"message": "Hello!"
}
```

Simple as that :)
