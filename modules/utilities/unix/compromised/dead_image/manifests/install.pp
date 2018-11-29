class dead_image::install {

  # $url_path = "http://z.cliffe.schreuders.org/files/6543367533"
  $url_path = "http://hacktivity.aet.leedsbeckett.ac.uk/files"
  # This file is just too big and binary to make sense to include in the git repo
  file { '/root/evidence/':
        ensure => 'directory'
  } ->
  file { '/root/evidence/hda1.img':
          source => "$url_path/hda1.img"
  } ->
  file { '/root/md5s':
          source => "$url_path/md5s"
  }

}
