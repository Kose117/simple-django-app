pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Test'){
            steps {
                sh 'pylint --recursive=y cool_counters | exit 0'
            }
        }
        stage('Deploy') {
            steps {
                sh 'python3 cool_counters/manage.py migrate'
            }
        }
    }
    post {
        always {
            sh '''
                (python3 cool_counters/manage.py runserver 0.0.0.0:8000 &)
                sleep 5
            '''
        }
    }
}