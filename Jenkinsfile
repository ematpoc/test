def sc

pipeline {
    agent any
    environment {
        VERSION = '1.0.2'
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
                BRANCH_NAME == 'main'
            }
        }

        steps {
            echo 'bulding in progress...'
            
        }
    }

    stage('load hello.groovy') {
        steps {
            script {
                sc = load 'hello.groovy'
            }
        }
    }


    stage('run hello.groovy') {
        steps {
            script {
                sc.hello()
            }
        }
    }

    stage('run paramsTest') {

        steps {
            script {
                pt = load 'paramsTest.groovy'
                pt.test()
            }
        }
    }
    }
}

