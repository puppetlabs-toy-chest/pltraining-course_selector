class course_selector::course::parser {
  file { '/etc/puppetlabs/code/modules':
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/parser/example_modules',
  }
  exec {'puppet module install jfryman-nginx --modulepath=/etc/puppetlabs/code/modules':
    path => '/usr/local/bin:/bin'
  }
}
