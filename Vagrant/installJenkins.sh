echo "Australia/Melbourne" | sudo tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean

apt-get -q -y install puppet

puppet module install puppetlabs-stdlib
puppet module install puppetlabs-apt
puppet module install puppetlabs-java
puppet module install puppetlabs-git
puppet module install maestrodev-maven
puppet module install rtyler-jenkins

puppet apply -d /vagrant_data/git.pp
puppet apply -d /vagrant_data/puppetScript.pp 
puppet apply -d /vagrant_data/jenkinsPlugins.pp

