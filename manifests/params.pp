# == Class: phpipam::params
#
class phpipam::params {
  $install_dir = '/opt/phpipam'
  $source_repo = 'git://github.com/phpipam/phpipam.git'
  $user        = 'phpipam'
  $db          = 'phpipam'

  case $::osfamily in {
    'RedHat': {
      $php_ini = '/etc/php.ini'
    }
    default: {
      fail("${::osfamily} not supported with kpeterson-phpipam")
    }
  }
}
