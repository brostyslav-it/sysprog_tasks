pipeline {
    agent {
        docker {
            image 'jenkins-img'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Fetch Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/brostyslav-it/sysprog_tasks.git'
            }
        }
        stage('Retrieve DEB Package') {
            steps {
                sh '''
                    curl -L https://github.com/brostyslav-it/sysprog_tasks/blob/main/deb/build/deb-package.deb -o /var/tmp/deb-package.deb
                '''
            }
        }
        stage('Apply DEB Package') {
            steps {
                sh '''
                    sudo dpkg -i /var/tmp/deb-package.deb
                '''
            }
        }
        stage('Fetch Script') {
            steps {
                sh '''
                    curl -L https://github.com/brostyslav-it/sysprog_tasks/blob/main/files_counter.sh -o /var/tmp/files_counter.sh
                    chmod +x /var/tmp/files_counter.sh
                '''
            }
        }
        stage('Execute Script') {
            steps {
                sh '/var/tmp/files_counter.sh'
            }
        }
    }
}
