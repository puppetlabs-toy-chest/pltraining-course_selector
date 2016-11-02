class course_selector::course::facter_intro {
  include course_selector
  file { '/root/puppetcode/modules/motd':
    ensure  => directory,
    recurse => true
    replace => false,
    source  => 'puppet:///modules/course_selector/facter/motd',
  }
}
