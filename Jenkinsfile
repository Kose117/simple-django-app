pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        // stage('Build') {
        //     steps {
        //         sh 'git clone https://github.com/Kose117/simple-django-app'
        //     }
        // }
        stage('Test'){
            steps {
                sh 'pylint --recursive=y cool_counters && exit 0'
            }
        }
        stage('Deploy') {
            steps {
                sh 'python3 cool_counters/manage.py migrate'
                sh 'python3 cool_counters/manage.py runserver'
            }
        }
    }
}