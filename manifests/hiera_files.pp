class course_selector::hiera_files {
  file { "${course_selector::codedir}/hiera.yaml":
    ensure => present,
    source => "puppet:///modules/course_selector/${course_selector::course}/hiera.yaml",
  }
  file { "${course_selector::codedir}/hieradata/":
    ensure  => directory,
    recurse => true,
    purge   => true,
    source  => "puppet:///modules/course_selector/${course_selector::course}/hieradata",
  }
}
