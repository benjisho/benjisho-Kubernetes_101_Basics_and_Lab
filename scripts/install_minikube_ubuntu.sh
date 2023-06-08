#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update -y

# Install VirtualBox
echo "Installing VirtualBox..."
sudo apt-get install -y virtualbox virtualbox-ext-pack

# Download Minikube
echo "Downloading Minikube..."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube

# Move Minikube executable to your PATH
echo "Moving Minikube to /usr/local/bin/..."
sudo mv minikube /usr/local/bin/

# Start Minikube
echo "Starting Minikube..."
sudo minikube start --force

# Confirm Installation
echo "Minikube installation is complete. Run 'minikube status' to confirm installation."
