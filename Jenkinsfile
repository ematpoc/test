
@Library('demo-library') _
def sc

pipeline {
    agent any 
    stages {
        stage('hello') {
            steps {
                hello('Mati')
            }
            
        }

        stage('hello again') {
            steps {
                script {
                    file = load 'hello.groovy'
                    file.hello()
                }
            }
        }
    }
}


//asdsa