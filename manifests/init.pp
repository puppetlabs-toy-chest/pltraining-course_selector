class course_selector (
  $course = $course_selector::prarams::course,
  $codedir = $course_selector::params::codedir,
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
}
