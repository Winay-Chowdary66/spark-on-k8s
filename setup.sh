#!/bin/bash

# Step 1: Install Minikube
echo "Installing Minikube..."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

# Step 2: Start Minikube Cluster
echo "Starting Minikube cluster..."
minikube start --cpus 4 --memory 4096

# Step 3: Install Helm
echo "Installing Helm..."
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 && chmod 700 get_helm.sh && ./get_helm.sh

# Step 4: Initialize Helm
echo "Initializing Helm..."
helm init

# Step 5: Add Spark Helm Repository
echo "Adding Apache Spark Helm repository..."
helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator