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

# Pipeline Script

  A descriptive Script
  
  stage1:- (trying to get the code from the github
           select the stage as Git
           provide the repo url using the pipeline syntax
           Add the credentials for your github such as name and password
           Provide an ID  and click on generate Pipeline script to get the script)
           copy the generated script and paste it on the stage one (refer Jenkinsfile)
           
  stage2:- compilation of the code and creating a Java Package for the Project
           (if maven is not installed head to Global Tool Configuration and beside Maven choose install automatically, provide
           a name such as Maven-3.6.2)
           
  stage3:- building a docker image for our project
  
  stage4:- Pushing the image to dockerhub,(while pushing image to docker hub we need to have(jenkins need)
           Docker Credentials,choose stageas withCredentials by clicking on pipeline syntax, jump to bindings
           and click on secret text and add credentials such as password for DockerHub Account, provide an
           ID and paste the ID in the variable section & then click on generate pipeline script and copy the script)
           paste the script in the stage.
           
   stage5:- Choose Kubernetes Continuous Deploy Plugin for deploying Applications to K8s
            Go to Jenkins->Manage Plugins->Available->Kubernetes Continuous Deploy->Select and Install.
            Add kube config information in Jenkins Credentials as:-
            Jenkins->Credentials->Select Kube Config->copy the kube config from the cluster.(Choose Enter Directly Method).
  
           
