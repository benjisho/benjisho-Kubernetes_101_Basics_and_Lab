# Kubernetes_101_Basics_Setup
This repository contains the necessary configuration files to build a simple Node.js server, containerize it with Docker, and deploy it to a Kubernetes cluster.

## Structure

The repository contains the following files:

- `Dockerfile`: The Docker configuration file to build a Docker image of the Node.js application.
- `server.js`: The Node.js server script that creates a basic HTTP server.
- `my-node-app-deployment.yaml`: The Kubernetes Deployment configuration file to deploy the application on a Kubernetes cluster.
- `my-node-app-service.yaml`: The Kubernetes Service configuration file to expose the application on a Kubernetes cluster.

## Prerequisites

- Docker installed on your machine.
- Minikube installed on your machine.
- Kubectl (the Kubernetes command-line tool) installed on your machine.

## Steps

1. **Build the Docker image**:

   Navigate to the repository's root directory and run:

   ```shell
   docker build -t my-node-app .
   ```
   
2. **Start the minikube cluster**:
  ```
  minikube start
  ```
3. **Deploy the application**:
  Apply the Deployment and Service configurations with the following commands:
  ```
  kubectl apply -f my-node-app-deployment.yaml
  kubectl apply -f my-node-app-service.yaml
  ```
4. **Check the Deployment and Service**:
  ```
  kubectl get deployments
  kubectl get services
  ```
5. ***Access the application***:
  ```
  minikube service my-node-app-service
  ```
This command will automatically open your application in a web browser.

That's it! You should now have a simple Node.js server running on your local Kubernetes cluster.

## Cleaning up
To delete the Deployment and Service, run:
```
kubectl delete deployment my-node-app-deployment
kubectl delete service my-node-app-service
```
To stop the minikube cluster, run:
```
minikube stop
```

This README provides a brief explanation of your repository, a list of files in it, a list of prerequisites for running the application, and step-by-step instructions for building the Docker image, deploying the application, accessing it, and cleaning up afterwards.
