#!/bin/bash
Helm install stable/jenkins \
    --name jenkins \
    --namespace jenkins \
    --values ../jenkins/jenkins-values.yml