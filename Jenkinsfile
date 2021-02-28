node {
  stage('build app') {
    sh 'docker-compose up -d --build app'
  }
}
pipeline {
    agent { docker { image 'python:3.7' } }
    stages {
        stage('install test dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('test app') {
            steps {
                sh 'pytest app/tests'
            }
        }
    }
    post {
        always {
            echo 'done!'
        }
    }
}