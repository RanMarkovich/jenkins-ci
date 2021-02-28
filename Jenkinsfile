node {
  stage('build app') {
    sh 'docker build -t app/app.y /var/jenkins_home/workspace/firs/app/'
  }
  stage('run app') {
    sh 'docker run -d -p 5000:5000 --name=app app/app.y'
  }
}
pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('test app') {
            steps {
                sh 'ls -l'
            }
        }
    }
    post {
        always {
            sh 'docker rm -f app'
        }
    }
}