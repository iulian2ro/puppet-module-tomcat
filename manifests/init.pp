# Class: tomcat
# ===========================
#
# Full description of class tomcat here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'tomcat':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#


class tomcat(
  $xms            = $::tomcat::params::xms, 
  $xmx            = $::tomcat::params::xmx,
  $user           = $::tomcat::params::user,
  $group          = $::tomcat::params::group, 
  $service_name   = $::tomcat::params::service_name,
  $service_state  = $::tomcat::params::service_state
) inherits tomcat::params{

  include tomcat::install
  include tomcat::service 
  include tomcat::config
}