#!/bin/bash
echo "Hello there, Welcome to K8 World, Intilizating the setup of Minnikube on your server"
echo "Updating the list of available packages and their versions this will help  the package manager to know about available updates for the software you have installed"
apt-get update -y
echo "Upgrading the newer versions of the packages you already have"
apt-get upgrade -y
echo "Upgrading the newer versions of the packages you already have"

echo "Installing utilities"
echo "installing conntrack. Connection tracking (“conntrack”) is a core feature of the Linux kernel's networking stack. It allows the kernel to keep track of all logical network connections or flows, and thereby identify all of the packets which make up each flow so they can be handled consistently together."

apt-get install conntrack -y
echo "Installing Curl"
apt-get install curl -i
echo "Installing APT transport for downloading via the HTTP Secure protocol"
apt-get install apt-transport-https -y
echo "Installing VirtualBox Now"
apt-get install virtualbox virtualbox-ext pack -y
echo "Okay we are all good with the pre-requisites needed"
echo "Lets install minikube now"
echo "Downloading Minikube"
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
echo "Installing Minikube"
install  minikube-linux-amd64 /usr/local/bin/minikube
echo "Lets check Minikube version which we just installed"
minikube version
echo "Minikube looks good. Downloading Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters."
curl -lo https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
echo "Installing KUBECTL"
install kubectl /usr/local/bin/kubectl
echo "Checking KUBECTL Version"
kubectl version -o json
echo "Starting your minikube cluster"
minikube start

#V2 items
#kubectl config view
#kubectl cluster-info
#kubectl get nodes
#kubectl get pod
#minikube addons list
#minikube ssh
#exit 
#minikube stop
#minikube status
