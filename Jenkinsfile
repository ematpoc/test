pipeline {
    agent { label 'node 1'}

    stages {
        stage('install python') {
            steps {
                timeout(time:10, unit:'SECONDS')                
		        sh 'python3 test.py '
            }
        }
    }
}
