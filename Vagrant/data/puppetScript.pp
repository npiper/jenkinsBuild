node 'ubuntu1310-i386' {

include git
include git::subtree

git::config { 'user.name':
    value => 'Neil Piper',
}

git::config { 'user.email':
  value => 'n_piper@hotmail.com',
}

include jenkins 

jenkins::plugin { 
	'git': ;
        'github': ;
        'confluence-publisher': ;
        'jira': ;
        'radiatorviewplugin': ;
        'chucknorris' : ;
}

 # defaults for all maven{} declarations
Maven {
  user  => "maven", # you can make puppet run Maven as a specific user instead of root, useful to share Maven settings and local repository
  group => "maven", # you can make puppet run Maven as a specific group
  repos => "http://repo.maven.apache.org/maven2"
}

 # Install Maven
class { "maven::maven":
  version => "3.0.5", # version to install
  # you can get Maven tarball from a Maven repository instead than from Apache servers, optionally with a user/password
  repo => {
    #url => "http://repo.maven.apache.org/maven2",
    #username => "",
    #password => "",
  }
}
}
