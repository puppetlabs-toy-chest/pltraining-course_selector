class course_selector::course::testing {
  file { '/root/puppetcode/modules':
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/testing/modules',
  }
  file { '/root/example.pp':
    ensure => file,
    source  => 'puppet:///modules/course_selector/testing/example.pp',
  }
}
