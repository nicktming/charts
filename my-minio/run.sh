#!/usr/bin/env bash

helm install --dry-run --debug my-minio

helm install -n myminio --namespace plugins ./my-minio

