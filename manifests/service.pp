class tomcat::service inherits tomcat { 
  service {"tomcat":
  ensure => running,
  enable => true,
  hasstatus => true,
  }

}
