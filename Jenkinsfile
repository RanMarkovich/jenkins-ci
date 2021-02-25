pipeline {
   agent none
  stages {
    stage('test') {
    agent {
    dockerfile {filename 'app/Dockerfile'}
        }
      steps {
        sh 'pytest tests/test_app.py'
      }
    }
  }
}