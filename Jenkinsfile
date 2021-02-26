pipeline {
    agent { docker { image 'python:3.7.2' } }
    stages {
        stage('build') {
            steps {
                sh 'pip install -r app/requirements.txt'
            }
        }
        stage('test') {
            steps {
                sh 'pytest app/tests'
            }
        }
    }
}