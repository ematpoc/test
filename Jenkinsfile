// def sc

// pipeline {
//     agent any
//     environment {
//         VERSION = '1.0.2'
//     }

//     parameters {
//         string(name: 'Name', defaultValue: 'Mateusz')
//         choice(name: 'gender', choices: ['male', 'female'])
//         booleanParam(name: 'executeTests', defaultValue: false)
//     }

//     stage('build') {
//         when {
//             expression {
//                 BRANCH_NAME == 'main'
//             }
//         }

//         steps {
//             echo 'bulding in progress...'
//             e
//         }
//     }

//     stage('load hello.groovy') {
//         steps {
//             script {
//                 sc = load 'hello.groovy'
//             }
//         }
//     }


//     stage('run hello.groovy') {
//         steps {
//             script {
//                 sc.hello()
//             }
//         }
//     }

//     stage('run paramsTest') {

//         steps {
//             script {
//                 pt = load 'paramsTest.groovy'
//                 pt.test()
//             }
//         }
//     }
// }

pipeline {
    agent any 

    stage('test') {
        steps {
            echo 'test'
        }
    }
}