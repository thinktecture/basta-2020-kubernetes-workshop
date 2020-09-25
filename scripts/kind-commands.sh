#!/bin/bash

# Create default cluster
kind create cluster 

# Create cluster from config
kind create cluster --config ../kind/kind.config

# list current clusters
kind get clusters

# delete kind cluster
kind delete cluster <<CLUSTER_NAME>>

# if there is only one cluser, you can delete it via
kind delete cluster
