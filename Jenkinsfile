pipeline {
    agent any
    
    triggers {
        pollSCM('* * * * *')
    }
    
    stages {
        stage('repo clean up'){
            steps {
                step([$class: 'WsCleanup'])
            }
        }

        stage('Checkout') {
            steps {
                git poll: true, url: 'https://github.com/chuanzhubin/dmall-inventory-service-base.git', branch: 'master'
            }
                
        }

        stage('Build') {
            steps{
                sh './gradlew build'
                sh 'genImages.sh'
                sh 'ls -l build/libs'
            }
        }
        stage('Test') {
            steps{
                sh './gradlew test'
            }
        }
    }
}