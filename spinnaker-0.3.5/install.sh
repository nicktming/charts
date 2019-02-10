#!/usr/bin/env bash

helm install -n my-spinnaker stable/spinnaker --set serviceType=NodePort --timeout 36000  --version 0.3.5 --namespace spinnaker

kubectl delete pods --all -n spinnaker --force --grace-period=0

helm install -n my-spinnaker stable/spinnaker --timeout 36000  --version 0.3.5 --namespace spinnaker
