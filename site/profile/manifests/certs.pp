class profile::certs {

  file { ['/etc/letsencrypt/',
          '/etc/letsencrypt/live/',
          '/etc/letsencrypt/live/mgmt1.int.test-lion.tl.gcs-devcloud.hpc.lrz.de',
          '/etc/letsencrypt/live/int.test-lion.tl.gcs-devcloud.hpc.lrz.de',
          '/etc/letsencrypt/live/test-lion.tl.gcs-devcloud.hpc.lrz.de',
          '/etc/letsencrypt/live/mokey.test-lion.tl.gcs-devcloud.hpc.lrz.de',
          '/etc/letsencrypt/live/jupyter.test-lion.tl.gcs-devcloud.hpc.lrz.de',
          '/etc/letsencrypt/live/ipa.test-lion.tl.gcs-devcloud.hpc.lrz.de',
          '/etc/letsencrypt/live/explore.test-lion.tl.gcs-devcloud.hpc.lrz.de']:
    ensure  => directory,
    recurse => true,
    owner  => 'root',
    group  => 'caddy'
  }

  file { '/etc/letsencrypt/live/test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }
  
  file { '/etc/letsencrypt/live/test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/mokey.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/mokey.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/ipa.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/ipa.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }
  

  file { '/etc/letsencrypt/live/jupyter.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/jupyter.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/mgmt1.int.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/mgmt1.int.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/int.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

  file { '/etc/letsencrypt/live/int.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'caddy',
    mode   => '0644'
  }

}
