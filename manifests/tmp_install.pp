  class { 'sonarqube' :
    arch          => 'linux-x86-64',
    user          => 'sonarqube',
    group         => 'sonarqube',
    service       => 'sonarqube',
    version       => $snq_conf['sonarqube']['version'],
    download_url  => $snq_conf['sonarqube']['download_url'],
    install_root  => $snq_conf['sonarqube']['install_root'],
    home          => $snq_conf['sonarqube']['home_dir'],
    log_folder    => $snq_conf['sonarqube']['log_dir'],
    jdbc          => {
      url      => $snq_conf['sonarqube']['jdbc']['url'],
      username => $snq_conf['sonarqube']['jdbc']['user'],
      password => $snq_conf['sonarqube']['jdbc']['pass'],
    },
    web_java_opts => $snq_conf['sonarqube']['java_opts'],
    updatecenter  => true,
  }
