class course_selector::course::unit_test {
  include course_selector
  file { "${settings::codedir}/modules":
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/unit_test/problem_modules',
  }
  # Students install these packages during the course, so remove them here
  package { ['rspec-puppet','puppetlabs_spec_helper']:
    ensure => absent,
  }
}
