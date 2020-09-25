#!/bin/bash

# global variables
RG_NAME=rg-basta-2020-kubernetes-workshop

az group delete $RG_NAME -n --no-wait