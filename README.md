# Road to Kubernetes: Python App Demo

This is a demo FastAPI application for the Road to Kubernetes series. This repo is primarily for educational purposes but can be modified for production use.


----

## Deploy to Kubernetes

### Create Deployment and Service
Create a `deployment`:
```
kubectl apply -f https://raw.githubusercontent.com/roadtokubernetes/py.demo.roadtok8s.com/main/k8s/deployment.yaml --namespace=apps
```
If you're using [keel.sh](https://keel.sh), this deployment will automatically update based on the [deployment annotations](https://github.com/roadtokubernetes/py.demo.roadtok8s.com/blob/main/k8s/deployment.yaml). 

Create a `service`:
```
kubectl apply -f https://raw.githubusercontent.com/roadtokubernetes/py.demo.roadtok8s.com/main/k8s/service.yaml --namespace=apps
```


Verify `deployment`:

```
kubectl get deployment py-demos-roadtok8s-com-deployment
```

Verify `service`:

```
kubectl get service py-demos-roadtok8s-com-service
```

Change `apps` to the namespace of your choosing. 



### Remove Deployment and Service
Delete the `deployment`:
```
kubectl delete -f https://raw.githubusercontent.com/roadtokubernetes/py.demo.roadtok8s.com/main/k8s/deployment.yaml --namespace=apps
```

Delete the `service`:
```
kubectl delete -f https://raw.githubusercontent.com/roadtokubernetes/py.demo.roadtok8s.com/main/k8s/service.yaml --namespace=apps
```

