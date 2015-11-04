include jenkins 

#jenkins::plugin { 
#        'scm-api': ;
#        'confluence-publisher': ;
#        'jira': ;
#        'radiatorviewplugin': ;
#        'chucknorris' : ;
#}

#jenkins::plugin {
#  'git': ;
#  'github': ;
#}

 # defaults for all maven{} declarations
Maven {
  user  => "maven", # you can make puppet run Maven as a specific user instead of root, useful to share Maven settings and local repository
  group => "maven", # you can make puppet run Maven as a specific group
  repos => "http://repo.maven.apache.org/maven2"
}

 # Install Maven
class { "maven::maven":
  version => "3.2.2", # version to install
  # you can get Maven tarball from a Maven repository instead than from Apache servers, optionally with a user/password
  repo => {
    #url => "http://repo.maven.apache.org/maven2",
    #username => "",
    #password => "",
  }
}
