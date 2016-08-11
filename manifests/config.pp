# == Class: phpipam::config
#
class phpipam::config (
  $pass        = undef,
  $user        = $::phpipam::params::user,
  $db          = $::phpipam::params::db,
  $install_dir = $::phpipam::params::install_dir
) {

    # Manage the Config file
    file { "${install_dir}/config.php":
      ensure  => present,
      content => epp('phpipam/config.php.epp', {
          'user' => $user,
          'pass' => $pass,
          'db'   => $db
      }),
    }
}
