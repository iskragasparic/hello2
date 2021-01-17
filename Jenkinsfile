pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'Hello World'
                //sh 'python /home/hello/service2/entrypoint.py'
            }
        }
        stage('unit_test') {
            steps {
                echo 'Unit test step'
            }
        }
        stage('integration_test') {
            steps {
                echo 'Integration test step'
            }
        }
        stage('publish_artifact') {
            steps {
                junit allowEmptyResults: true, testResults: '**/test_results/*.xml'
            }
        }
        stage('deploy_to_staging') {
            steps {
                echo 'will be'
            }
        }
        stage('smoke_test') {
            steps {
                sh 'chmod +x smoke_test.sh'
                sh './smoke_test.sh || true'
                junit allowEmptyResults: true, testResults: '**/test_results/*.xml'
            }
        }
        stage('end_to_end_test') {
            steps {
                echo 'End to end test step'
            }
        }
        stage('deploy_to_production') {
            steps {
                echo 'will be'
            }
        }    
    }
}
