class tomcat::install inherits tomcat {
    
    include java
    
    package { [ 'tomcat', 'tomcat-webapps' ]:
      ensure   => installed, 
      require  => Package['epel-release']
    }

}
