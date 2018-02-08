#!/usr/bin/env bash

kubectl --kubeconfig=$KUBECTL_CONFIG_FILE delete -f inventory-service.yaml
kubectl --kubeconfig=$KUBECTL_CONFIG_FILE create -f inventory-service.yaml