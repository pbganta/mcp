class profile::certs {

  file { '/etc/letsencrypt/live/test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }
  
  file { '/etc/letsencrypt/live/test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/etc/letsencrypt/live/mokey.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/etc/letsencrypt/live/mokey.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }


  file { '/etc/letsencrypt/live/ipa.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/etc/letsencrypt/live/ipa.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
  

  file { '/etc/letsencrypt/live/jupyter.test-lion.tl.gcs-devcloud.hpc.lrz.de/privkey.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/privateKey.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }

  file { '/etc/letsencrypt/live/jupyter.test-lion.tl.gcs-devcloud.hpc.lrz.de/fullchain.pem':
    ensure  => directory,
    recurse => true,
    source => 'puppet:///modules/profile/cert/fullchain.pem',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
