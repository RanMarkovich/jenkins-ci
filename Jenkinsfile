node {
  stage('build app') {
    sh 'docker-compose up -d --build app'
  }
  stage('run app') {
    sh 'docker run -d -p 5000:5000 --name=app app/app.y'
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