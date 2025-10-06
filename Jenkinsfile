pipeline {
    agent any

    stages {
        stage('Checkout GIT') {
            steps {
                echo 'Pulling source code...'
                git branch: 'master',
                    url: 'https://github.com/Seifer2001/Projet_devops.git'
            }
        }

        stage('Build with Maven') {
            steps {
                echo 'Building project with Maven...'
                sh 'mvn clean package -DskipTests'
            }
        }
    }
}