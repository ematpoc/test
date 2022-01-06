pipeline {
    agent { 
        node {
            label 'docker-slave'
            }
    }

    stages {
        stage('install python') {
            steps {
                sleep time:10
                milestone label:'demo', ordinal:1
                echo 'this build passed milestone'
                sleep time: 20
                             		       
            }
        }
    }
}

