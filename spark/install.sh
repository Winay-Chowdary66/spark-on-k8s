#!/bin/bash

# Step 1: Add Apache Spark Helm repository
helm repo add bitnami https://charts.bitnami.com/bitnami

# Step 2: Install Apache Spark using Helm
helm install my-spark bitnami/spark -f ./values.yml