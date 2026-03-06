# About Helm-chart

## Structure

**1. Chart.yaml**

This file defines the metadata of your chart.

```
apiVersion: v2
name: my-application
description: A Helm chart for Kubernetes
version: 0.1.0
```

**2. values.yaml**

This is the default configuration file for your chart. Users can override these values during deployment.

```
replicaCount: 2
image:
  repository: nginx
  tag: "1.20"
service:
  type: ClusterIP
  port: 80
```

**3. templates/**

This folder contains Kubernetes manifests that use Go templates for dynamic configuration.

*to be continue...*