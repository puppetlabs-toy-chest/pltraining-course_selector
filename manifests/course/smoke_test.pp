class course_selector::course::smoke_test {
  include course_selector
  file { "${settings::codedir}/modules":
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/smoke_test/problem_modules',
  }
}
