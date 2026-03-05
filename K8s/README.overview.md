# About Kubernetes

## 1. Basic structure of a K8s cluster
A kubernetes cluster consist of two main components: The Control Plane and The Worker Node. See the figure below:

![image](..\figures\K8s\k8s_structure.png)

- Control Plane (Master Node): Acts as the "brain" managing the entire cluster, including:
    - kube-apiserver: The main communication gateway of the K8s cluster.
    - etcd: A database storing all cluster configurations and states.
    - kube-scheduler: Decides which container will run on which server (node) based on available resources.
    - kube-controller-manager: Ensures the actual state of the cluster always matches the desired state.

- Worker Nodes: These are the physical or virtual machines where the application actually runs, including:
    - kubelet: The Control Plane representative on each node, ensuring containers run as required.
    - kube-proxy: Manages the network, allowing containers to communicate with each other and with the outside world.
    - Container Runtime: The software that runs the container (usually Docker or containerd).

## 2. Some basic components of K8s cluster

- Pod: The smallest unit in K8s, containing one or more containers that share network resources and storage.
- Service: Defines a stable IP address for accessing the group of Pods (as Pods can be continuously deleted and recreated with changing IP addresses).
- Deployment: Manages application updates, allows increasing/decreasing the number of Pods, and supports self-healing mechanisms.
- Ingress: Manages external access to services within the cluster (usually via HTTP/HTTPS).

