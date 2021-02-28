pipeline {
    agent none
    stages {
        stage('build') {
        agent {
                docker {
                    image 'python:3.7'
                }
            }
            steps {
                sh 'su - docker'
            }
        }
    }
}