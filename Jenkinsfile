pipeline {
  agent any
  stages {
    stage('Test') {
      agent {
        docker {
          image 'ubuntu:18.04'
        }

      }
      steps {
        sh 'echo "Getting Sources"'
      }
    }

    stage('Build') {
      agent {
        docker {
          image 'ubuntu:18.04'
        }

      }
      steps {
        sh 'echo "Build from sources"'
      }
    }

  }
}