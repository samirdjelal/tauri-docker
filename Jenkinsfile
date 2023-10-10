pipeline {
    agent any
    environment {
        DOCKER_BUILDKIT = "1"
        DOCKER_REGISTRY_CREDENTIALS = credentials("docker-hub-credentials")
    }
    stages {
        stage("Tauri Ubuntu") {
            steps {
                script {
                    docker.build("tauri-ubuntu", "-f ubuntu.Dockerfile .")
                    docker.withRegistry("https://registry.hub.docker.com", "${DOCKER_REGISTRY_CREDENTIALS}") {
                        docker.image("tauri-ubuntu:latest").push()
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