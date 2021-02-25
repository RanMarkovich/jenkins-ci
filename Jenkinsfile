pipeline {
   agent none
  stages {
    stage('build') {
    agent {
    dockerfile {filename 'app/Dockerfile'}
        }
      steps {
        sh 'built!'
      }
    }
  }
}