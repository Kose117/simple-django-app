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
                sh 'pylint cool_counters.manage'
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