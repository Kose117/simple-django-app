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
                sh 'pylint simple-django-app.cool_counters'
            }
        }
        stage('Deploy') {
            steps {
                sh 'python3 simple-django-app/cool_counters/manage.py migrate'
                sh 'python3 simple-django-app/cool_counters/manage.py runserver'
            }
        }
    }
}