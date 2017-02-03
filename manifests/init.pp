class course_selector (
  $course = $course_selector::params::course,
  $codedir = $course_selector::params::codedir,
  $confdir = $course_selector::params::confdir,
  $ruby_binary = $course_selector::params::ruby_binary
) inherits course_selector::params {
  include course_selector::hiera_files

  file { '/usr/local/bin/course_update':
    ensure  => file,
    mode    => '0755',
    source  => 'puppet:///modules/course_selector/scripts/course_update.rb',
  }
  file { '/usr/local/bin/course_selector':
    ensure  => file,
    mode    => '0755',
    source  => 'puppet:///modules/course_selector/scripts/course_selector.rb',
  }
  file { '/usr/local/bin/course_menu':
    ensure  => file,
    mode    => '0755',
    content  => template('course_selector/course_menu.rb.erb'),
  }
  file { '/root/puppetcode':
    ensure => directory,
  }
  file { '/root/puppetcode/modules':
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/default/modules',
  }
}
