# 🚀 Kubernetes_101_Basics
This repository contains the necessary configuration files to build a simple Node.js server, containerize it with Docker, and deploy it to a Kubernetes cluster.

## 📋 Table of Contents

1. [Structure](#structure)
2. [Prerequisites](#prerequisites)
    1. [Docker Engine](#docker-engine)
    2. [Minikube](#minikube)
    3. [Kubectl](#kubectl)
3. [Setup Steps](#setup-steps)
4. [Exploring Kubernetes Further](#exploring-kubernetes-further)
5. [Cleaning up](#cleaning-up)

<a name="structure"></a>
## 📂 Structure

The repository contains the following files:

- `Dockerfile`: The Docker configuration file to build a Docker image of the Node.js application.
- `server.js`: The Node.js server script that creates a basic HTTP server.
- `my-node-app-deployment.yaml`: The Kubernetes Deployment configuration file to deploy the application on a Kubernetes cluster.
- `my-node-app-service.yaml`: The Kubernetes Service configuration file to expose the application on a Kubernetes cluster.

<a name="prerequisites"></a>
## 📌 Prerequisites
<a name="docker-engine"></a>
### 🐳 Docker Engine
Follow the instructions [here](https://docs.docker.com/engine/install/) to install.
   - For Ubuntu, follow the instructions [here](https://docs.docker.com/engine/install/ubuntu/).
      - Additionally: If you are using **Ubuntu**, you can use the provided script to install Docker Engine.
      - Navigate to the `scripts` directory using the command below and run:
         ```
         cd scripts
         chmod +x install_docker_engine_ubuntu.sh
         ./install_docker_engine_ubuntu.sh
         ```
   - For Debian, follow the instructions [here](https://docs.docker.com/engine/install/debian/).
<a name="minikube"></a>
### 🚜 Minikube
Follow the instructions [here](https://minikube.sigs.k8s.io/docs/start/) to install.
   - For Ubuntu, you can also use the provided script to install Minikube.
      - Additionally: If you are using **Ubuntu**, you can use the provided script to install Minikube.
      - Navigate to the `scripts` directory and run:
         ```shell
         cd scripts
         chmod +x install_minikube_ubuntu.sh
         ./install_minikube_ubuntu.sh
         ```
<a name="kubectl"></a>
### ⚙️ Kubectl
The Kubernetes command-line tool. You can install it by following the instructions [here](https://kubernetes.io/docs/tasks/tools/).
   - For Ubuntu, follow the instructions [here](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/).
      - Additionally: If you are using **Ubuntu**, you can use the provided script to install Kubectl.
      - Navigate to the `scripts` directory using the command below and run:
         ```
         cd scripts
         chmod +x install_kubectl_ubuntu.sh
         ./install_kubectl_ubuntu.sh
         ```
---
<a name="setup-steps"></a>
## 🚀 Setup Steps

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
5. **Access the application**:
    ```
    minikube service my-node-app-service
    ```
   This command will automatically open your application in a web browser.

That's it! You should now have a simple Node.js server running on your local Kubernetes cluster. 👏

<a name="exploring-kubernetes-further"></a>
## 🕵️‍♀️ Exploring Kubernetes Further

Kubernetes provides several resources that you can use to further manage your application. Here are a few examples:

- **Pods**: These are the smallest deployable units of computing that can be created and managed in Kubernetes.
    ```shell
    # Get information about Pods
    kubectl get pods

    # Get detailed information about a specific Pod
    kubectl describe pod [POD_NAME]
    ```
    
- **Services**: A way to expose an application running on a set of Pods as a network service.
    ```shell
    # Get information about Services
    kubectl get services

    # Get detailed information about a specific Service
    kubectl describe service [SERVICE_NAME]
    ```
    
- **Volumes**: A directory containing data, accessible to the containers in a pod.
    ```shell
    # Get detailed information about a specific Volume by describing the Pod
    kubectl describe pod [POD_NAME]
    ```
    
- **Namespaces**: A way to divide cluster resources between multiple users.
    ```shell
    # Get information about Namespaces
    kubectl get namespaces

    # Get detailed information about a specific Namespace
    kubectl describe namespace [NAMESPACE_NAME]
    ```
You can use the `kubectl get` command followed by the resource type to get information about that resource. For example, `kubectl get pods` will give you information about the running pods. You can also use `kubectl get all` to get information about all the resources in the Kubernetes cluster.

Replace `[POD_NAME]`, `[SERVICE_NAME]`, and `[NAMESPACE_NAME]` with the name of your Pod, Service, or Namespace respectively when running the describe commands.
<a name="cleaning-up"></a>
## 🧹 Cleaning up
To delete the Deployment and Service, run:
```
kubectl delete deployment my-node-app-deployment
kubectl delete service my-node-app-service
```
To stop the minikube cluster, run:
```
minikube stop
```
