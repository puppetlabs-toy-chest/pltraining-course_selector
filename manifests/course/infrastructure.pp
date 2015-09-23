class course_selector::course::infrastructure {
  include course_selector
  file {"${course_selector::code_dir}/environments":
    ensure  => directory,
    source  => 'puppet:///modules/course_selector/infrastructure/environments',
    recurse => true,
  }
}
