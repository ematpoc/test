def sc

pipeline {
    agent any

    options {
        pipelineTriggers([pollSCM('* * * * *')])
    }
    environment {
        VERSION = '1.0.2'
        creds = credentials('test')
    }

    parameters {
        string(name: 'BranchName', defaultValue: 'dev')
        choice(name: 'gender', choices: ['male', 'female'])
        booleanParam(name: 'executeTests', defaultValue: false)
    }


    stages {

    
    stage('build') {
        when {
            expression {
                env.BRANCH_NAME == 'main'
            }
        }

        steps {
            echo 'bulding in progress...'
            
        }
    }

    stage('test creds') {
        steps {
            withCredentials([usernamePassword(credentialsId: "test", passwordVariable: 'mypswd', usernameVariable: 'myuser')]) {
                sh "./creds.sh myuser mypswd"
            }
        }
    }

    stage('load hello.groovy') {
        steps {
            script {
                sc = load 'hello.groovy'
            }
        }
    }

    stage('run cred.sh') {
        steps {
            sh "./creds.sh ${creds}"
        }
    }


    stage('run hello.groovy') {
        steps {
            script {
                sc.hello()
            }
        }
    }

    stage('run a paramsTest') {

        steps {
            script {
                pt = load 'paramsTest.groovy'
                pt.test()
            }
        }
    }
    }

}

