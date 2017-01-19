class course_selector::course::parser {
  file { '/etc/puppetlabs/code/modules':
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/parser/example_modules',
  }
  exec {'puppet module install puppet-nginx --modulepath=/etc/puppetlabs/code/modules':
    path => '/usr/local/bin:/bin'
  }
  # Make sure there is some kind of .profile for userprefs
  file {'/root/.profle':
    ensure => present,
    before => Class['userprefs::vim'],
  }
  include userprefs::profile
  include userprefs::vim
}
