node 'ubuntu1310-i386' {
    user {'jenkins':
      ensure => absent,
    }   

  include jenkins
}
