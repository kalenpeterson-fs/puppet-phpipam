# == Class: phpipam::install
#
class phpipam::install (
    $install_dir = $::phpipam::params::install_dir,
    $source_repo = $::phpipam::params::source_repo
) {

  vcsrepo { $install_dir:
    ensure   => present,
    provider => git,
    source   => $source_repo,
  }

}
