# Spin up a Single Node OpenShift Cluster on IBM Cloud - Build 

## Introduction

This is a companion repository to the repo [Spin up a Single Node OpenShift Cluster on IBM Cloud - Run](https://github.ibm.com/carew/sno-on-ibm-cloud-vpc-ansible-scripts) and includes the source code for the docker image that runs a collection of Ansible playbooks to  provision a Single Node OpenShift cluster (SNO) on Linux KVM.  

This repo is for users that want to access the code of the  Ansible playbooks and possibly customize the tasks. 
If you just want to run the docker container that is built by the code in this repo without any code customizations, clone the repo called  [Spin up a Single Node OpenShift Cluster on IBM Cloud - Run](https://github.ibm.com/carew/sno-on-ibm-cloud-vpc-ansible-scripts) and follow the instructions there.

## Prerequisites

The following prerequisites are required:

i. Install either a recent **podman** or **docker** version capable of building  *x86-64* container images on your local machine.

ii. Install the command line [Git client](https://git-scm.com/downloads) if you don't already have it installed.

iii. Clone this repo

```
   git clone git@github.ibm.com:carew/sno-on-ibm-cloud-vpc-ansible-build.git
   cd sno-on-ibm-cloud-vpc-ansible-build
```

## Build the container

i. Run the  *build.sh* script providing the name of the image you want to build 

```
   ./build.sh  [your image name]
```

ii. Follow the instructions in the [Spin up a Single Node OpenShift Cluster on IBM Cloud - Run](https://github.ibm.com/carew/sno-on-ibm-cloud-vpc-ansible-scripts) repo  to run with your custom version of the docker image. 

