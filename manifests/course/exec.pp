class course_selector::course::exec {
  group { 'webusers':
    ensure => present
  }
  file { '/usr/bin/webuser':
    ensure => file,
    mode   => '0555',
    source => 'puppet:///modules/course_selector/exec/webuser'
  }
  file { '/usr/bin/webupdate':
    ensure => file,
    mode   => '0555',
    source => 'puppet:///modules/course_selector/exec/webupdate'
  }
  file { '/root/example.tar':
    ensure => file,
    source => 'puppet:///modules/course_selector/exec/example.tar'
  }
}
