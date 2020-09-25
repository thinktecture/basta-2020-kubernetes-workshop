#!/bin/bash

# global variables
RG_NAME=rg-basta-2020-kubernetes-workshop
AZ_REGION=westeurope

# ACR requires unique name, customize the following variable!
ACR_SUFFIX=""

# Create a resource Group
az group create -n $RG_NAME -l $AZ_REGION

# Create an Azure Container Registry
az acr create -n basta2020k8s$ACR_SUFFIX -g $RG_NAME --sku Basic --admin-enabled false -l $AZ_REGION

# Get ACR Id
ACR_ID=$(az acr show -n basta2020k8s$ACR_SUFFIX -g $RG_NAME --query "id" -o tsv)

# Create AKS
az aks create -n basta-2020-k8s -g $RG_NAME --attach-acr $ACR_ID --node-count 2 --enable-managed-identity -l $AZ_REGION

# Create AKS without ACR
# az aks create -n basta-2020-k8s -g $RG_NAME --node-count 2 --enable-managed-identity -l $AZ_REGION