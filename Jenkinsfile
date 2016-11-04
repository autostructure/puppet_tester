#!/usr/bin/env groovy
// Jenkinsfile
// Build and test a Maven project

node {
  checkout scm

  stage('Build Container') {
    // docker.withServer('tcp://docker0.autostructure.io:2375') {
      def image = docker.build('docker-local.docker.azcender.com/puppet-tester:latest')

      image.push()
    // }
  }
}
