node {
    stage ('git clone') {
        checkout scm
        GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
        VERSION = GIT_COMMIT_HASH.take(7)
    }
    stage('docker build') {
        app = docker.build("truelifer/python310-scrapy-img:${VERSION}")
    }
}