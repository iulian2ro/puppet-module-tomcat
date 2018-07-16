define tomcat::deploy(
  $deploy_path = "/var/lib/tomcat/webapps",
  $deploy_url  = "https://1-140243591-gh.circle-artifacts.com/0/tmp/circle-artifacts.cspjyCH/sysfoo.war"


) inherits tomcat {

  file{"${deploy_path}/${name}.war":
    source => "${deploy_url}",
    owner  => 'tomcat',
    group  => 'tomcat',
    notify => Exec['purge_context'],
  
  }
  
  
  exec{"purge_context":
    path        => [ '/bin', '/usr/bin', '/usr/sbin' ],
    command     => "rm -rf ${deploy_path}/${name}.war",
    refreshonly => true,
    notify      => Service["$tomcat::service"],
    
  
  }

}