pipeline {
    agent {
  label 'devops-test-node'
}


    stages {
        stage('Checkout') {
            steps {
                echo '*******************Building A docker Image using Jenkins********************'
                git 'https://github.com/sfordevops/april22devops.git'
            }
        }

    stages {
        stage('docker Build') {
            steps {
                echo '*******************Building a docker Image********************'
                sh 'docker build -t jenkins-doc-image .'
            }
        }
    }
    stages {
        stage('Docker Tag') {
            steps {
                echo '*******************Building a docker Image********************'
                sh 'docker tag jenkins-doc-image sforcloud/jenkins-doc-image'
            }
        }
    }
    stages {
        stage('Docker push') {
            steps {
                echo 'Hello World'
                sh 'docker push sforcloud/jenkins-doc-image'
            }
        }
    }


  }
}




