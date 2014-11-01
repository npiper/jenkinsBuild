echo "Australia/Melbourne" | sudo tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata


puppet module install puppetlabs-stdlib
puppet module install puppetlabs-apt
puppet module install puppetlabs-java
puppet module install puppetlabs-git
puppet module install maestrodev-maven
puppet module install rtyler-jenkins
