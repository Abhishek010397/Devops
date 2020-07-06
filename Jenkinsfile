node{
     
    stage('Git Clone'){
        git credentialsId: 'GIT_CREDENTIALS', url:  'https://github.com/Abhishek010397/Devops.git',branch: 'master'
    }
    
    stage(" Maven Clean Package"){
      def mavenHome =  tool name: "Maven-3.6.1", type: "maven"
      def mavenCMD = "${mavenHome}/bin/mvn"
      sh "${mavenCMD} clean package"
      
    } 
    
    
    stage('Build Docker Image'){
        sh 'docker build -t 2307297/jenkins-kubernetes .'
    }
    
    stage('Push Docker Image'){
        withCredentials([string(credentialsId: 'DOKCER_HUB_PASSWORD', variable: 'DOKCER_HUB_PASSWORD')]) {
          sh "docker login -u dockerhandson -p ${DOKCER_HUB_PASSWORD}"
        }
        sh 'docker push 2307297/jenkins-kubernetes'
     }
     
     stage("Deploy To Kuberates Cluster"){
       kubernetesDeploy(
         configs: 'springboot-mongo.yml', 
         kubeconfigId: 'KUBERNATES_CONFIG',
         enableConfigSubstitution: true
        )
     }
	 
	  /**
      stage("Deploy To Kuberates Cluster"){
        sh 'kubectl apply -f springboot-mongo.yml'
      } **/
     
}
