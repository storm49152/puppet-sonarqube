  $archive = "sonarqube-${version}.zip"
  archive { "/usr/local/src/${archive}":
    ensure       => present,
    source       => "${download_url}/${archive}",
    extract      => true,
    extract_path => $install_root,
    creates      => "${install_root}/sonarqube-${version}",
    cleanup      => true,
  }
  -> file { "${install_root}/${package_name}":
    ensure => link,
    target => "${install_root}/${package_name}-${version}",
  }
