class course_selector::course::hiera {
  class { 'course_selector':
    course => 'hiera'
  }
  # Remove the timeout and warning message
  file { '/etc/profile.d/profile.sh':
    ensure => present,
    source => 'puppet:///modules/course_selector/hiera/profile.sh'
  }
  # Remove auto-shutdown
  file { '/etc/bash.bash_logout':
    ensure => absent,
  }
  file { "${course_selector::codedir}/environments":
    ensure => directory,
  }
}
