class course_selector::course::infrastructure {
  include course_selector
  file {"${course_selector::codedir}/environments":
    ensure  => directory,
    source  => 'puppet:///modules/course_selector/infrastructure/environments',
    recurse => true,
  }
}
