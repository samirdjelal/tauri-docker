pipeline {
    agent any
    environment {
        DOCKER_BUILDKIT = "1"
    }
    stages {
        stage("Tauri Ubuntu") {
            steps {
                script {
                    withDockerRegistry([credentialsId: "docker-hub-credentials", url: "https://index.docker.io/v1/"]) {
                        docker.build("tauri-ubuntu", "-f ubuntu.Dockerfile .")
                        // docker.withRegistry("https://registry.hub.docker.com", "docker-hub-credentials") {
                        //     docker.image("tauri-ubuntu:latest").push()
                        // }
                        // docker.image("tauri-ubuntu:latest").push()
                        sh 'docker push samirdjelal/tauri-ubuntu:latest'
                    }
                }
            }
        }
        // stage('Tauri Windows') {
        //     steps {
        //         script {
        //             docker.build("tauri", "-f windows.Dockerfile .")
        //             docker.withRegistry("https://registry.hub.docker.com", "docker-hub-credentials") {
        //                 docker.image("tauri-windows").push()
        //             }
        //         }
        //     }
        // }
        //
        // stage('Tauri macOS') {
        //     steps {
        //         script {
        //             docker.build("tauri", "-f macos.Dockerfile .")
        //             docker.withRegistry("https://registry.hub.docker.com", "docker-hub-credentials") {
        //                 docker.image("tauri-macos").push()
        //             }
        //         }
        //     }
        // }
    }
}