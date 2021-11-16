pipeline {
   agent any
   stages {
       stage('Pull') {
           steps {
               script {
                   checkout([$class: 'GitSCM', branches: [[name: '*/master']],
                   userRemoteConfigs:[[
                   credentialsId: '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',
                   url: 'https://github.com/Anouar1919/appp']]])
               }
           }
       }
       stage('Build') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
       stage('Docker') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/docker.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
       stage('Push local image to repositroy') {
           steps {
               script {
               sh "sudo ansible-playbook Ansible/dockerregistry.yml -i Ansible/inventory/host.yml "    
              	       }
           }
       }
   }
}
