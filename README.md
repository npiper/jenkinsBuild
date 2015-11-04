An Automated Jenkins Install

GOAL:
Automate the provisioning and installation of a jenkins instance with all required plugins, and pre-requisites using the goal of 'one-click' deployment and provisioning.

Technologies used:
* Vagrant 
* Puppet

* What do I need to build it locally?


* Vagrant install (tested on version 1.7+)
* Oracle VirtualBox

The build process has been tested on the following setups:
* a MacOSX system in AWS EC2.
* a Windows 

* What is the build based on?

An Ubuntu 1310 (386) Server install with base puppet is used as the base box / VM image.

ubuntu-1310-i386-virtualbox-puppet.box

URL: http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-1310-i386-virtualbox-puppet.box

To add to your local install:

>vagrant box add --name ubuntu-1310-i386-virtualbox-puppet.box http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-1310-i386-virtualbox-puppet.box



* Pre-Requisite installs (Ubuntu)
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
