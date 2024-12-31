#!/bin/bash

# Repair cluster
gcloud container clusters repair private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive

# Upgrade if needed
gcloud container clusters upgrade private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --master

# Enable monitoring
gcloud container clusters update private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --enable-stackdriver-kubernetes