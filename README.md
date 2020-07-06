# CI/CD Pipeline Using Scripting Pipeline Script

# Agenda
1. Installation of Jenkins Server
2. Installation of K8s Cluster
3. Setup Jenkins Server to deploy applications to K8s Cluster
4. Build and Deploy Dockerized Applications from Jenkins to K8s Cluster

# Setup Docker in Jenkins Server
1.Install Docker

         sudo curl -fsSl get.docker.com | /bin/bash

2. Add Jenkins User to Docker group:- To grant permissions to Jenkins User to use docker commands

         sudo usermod -aG docker jenkins
         
3. Restart Jenkins

         sudo systemctl restart jenkins
