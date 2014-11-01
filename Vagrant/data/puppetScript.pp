node 'ubuntu1310-i386' {
    user {'jenkins':
      ensure => absent,
    }   

  include jenkins

  jenkins::plugin {
  "git" : ;
  "radiatorviewplugin" : ;
  "jira" : ;
  "confluencepublisher" : ;
  "jenkins-cloudformation-plugin" : ;
  }  
}
