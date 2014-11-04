Jenkins Install

* What is the build based on?

An Ubuntu 1310 (386) Server install with base puppet.

ubuntu-1310-i386-virtualbox-puppet.box

URL: http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-1310-i386-virtualbox-puppet.box

* Pre-Requisite installs
GIT
Java (OpenJDK) = /usr/lib/jvm/java-1.7.0-openjdk-i386
Maven - MVN_HOME = /opt/apache-maven-3.2.2

* Configuration

** Version 1.587

** Home directory /var/lib/jenkins

** URL http://{DHCP-URL}:8080/

** LOGS /var/log/jenkins/jenkins.log

* Plugins
        'git-client' 
        'ssh-agent'
        'git'
        'github-api'
        'github'
        'scm-api'
        'confluence-publisher'
        'jira'
        'radiatorviewplugin'
        'chucknorris' 


* How to build the jenkins server

sudo ./installJenkins.sh
sudo puppet apply -d git.pp
sudo puppet apply -d puppetScript.pp  (May need to run twice if openJDK fails)
suod puppet apply -d jenkinsPlugins.pp
