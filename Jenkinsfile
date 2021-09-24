pipeline {
    agent { label 'node 1'}

    stages {
        stage('install python') {
            steps {                
		        sh 'python3 test.py '
            }
        }
    }
}
