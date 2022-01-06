

pipeline {
    agent {
        node {
            label 'docker-slave'
        }
    }

    parameters {
        string(name: 'branch', defaultValue: 'main')
    }
    // stages {
    //     stage('fetch') {
    //         steps {
    //             git branch: params.branch, url: 'https://github.com/ematpoc/test.git'

    //         }
    //     }
        

        stage('test application') {
            steps {
                sh 'python3 hello.py &'
                sh 'sleep 5'
                sh 'curl localhost:9000'
            }
        }
        
        
        stage('build and push image') {
            
            steps {
                sh 'whoami'
                sh 'pwd'
                catchError {
                    script {
                        
                    def image = docker.build('ematpoc/flask-server:latest', '/home/jenkins/workspace/first-project/')
                }
                }
                
                sh 'sleep 100'
            }
        }
    }
}