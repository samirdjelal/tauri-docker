pipeline {
    agent any
    environment {
        DOCKER_BUILDKIT = "1"
    }
    stages {
        stage("Tauri Ubuntu") {
            steps {
                script {
                    docker.build("tauri-ubuntu", "-f ubuntu.Dockerfile .")
                    docker.withRegistry("https://registry.hub.docker.com", "docker-hub-credentials") {
                        docker.image("samirdjelal/tauri-ubuntu").push()
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