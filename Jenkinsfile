
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
    stage('create build output') {
        steps {
            writeFile file: "output/needed.txt", text: "This file is needed. It should be archived"
        }
    }

    stage('archive build output') {
        steps {
            archiveArtifacts artifacts: 'output/*.txt'
        }
    }

    }
    
}

