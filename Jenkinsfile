pipeline {
    agent any
    environment {
        DOCKER_BUILDKIT = "1"
    }
    stages {
        stage("Tauri Ubuntu") {
            steps {
                script {
                    docker.build("tauri", "-f ubuntu.Dockerfile .")
                    docker.withRegistry("https://registry.hub.docker.com", "docker-hub-credentials") {
                        docker.image("samirdjelal/tauri-ubuntu:latest").push()
                    }
                }
            }
        }
        // stage('Tauri Windows') {
        //     steps {
        //         script {
        //             docker.build("tauri", "-f windows.Dockerfile .")
        //             docker.withRegistry("https://registry.hub.docker.com", "docker-hub-credentials") {
        //                 docker.image("tauri-windows:latest").push()
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
        //                 docker.image("tauri-macos:latest").push()
        //             }
        //         }
        //     }
        // }
    }
}