#!/bin/bash

# Get cluster status
gcloud container clusters describe private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive

# List node pools
gcloud container node-pools list \
    --cluster private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive

# Check nodes and pods
kubectl get nodes
kubectl get pods --all-namespaces