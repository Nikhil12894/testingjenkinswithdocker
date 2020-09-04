// Example 1
// pipeline {
//     agent any

//     tools {
//         maven "Maven" // You need to add a maven with name "3.6.0" in the Global Tools Configuration page
//     }

//     stages {
//         stage("Build") {
//             steps {
//                 sh "mvn -version"
//                 sh "mvn clean install"
//             }
//         }
//     }

//     post {
//         always {
//             cleanWs()
//         }
//     }
// }


// Example 2
pipeline {
    // environment {
    //     JAVA_TOOL_OPTIONS = "-Duser.home=/var/maven"
    // }
    agent {
        docker {
            image "maven:3.6.0-jdk-13"
            label "docker"
            // args "-v /tmp/maven:/var/maven/.m2 -e MAVEN_CONFIG=/var/maven/.m2"
        }
    }

    stages {
        stage("Build") {
            steps {
                sh "mvn -version"
                sh "mvn clean install"
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

