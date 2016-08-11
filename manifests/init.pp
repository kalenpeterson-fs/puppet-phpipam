# Class: phpipam
# ===========================
#
# Full description of class phpipam here.
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
#    class { 'phpipam':
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
# Copyright 2016 Your name here, unless otherwise noted.
#
class phpipam (
  $pass        = undef,
  $user        = $::phpipam::params::user,
  $db          = $::phpipam::params::db,
  $install_dir = $::phpipam::params::install_dir,
  $source_repo = $::phpipam::params::source_repo

) inherits phpipam::params {

  class { 'phpipam::install':
    install_dir = $install_dir,
    source_repo = $source_repo,
  } ->
  class { 'phpipam::config':
    user => $user,
    pass => $pass,
    db   => $db,
  }
}
