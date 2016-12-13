class course_selector::course::validating {
  include course_selector
  package { 'puppet-lint':
    ensure   => present,
    provider => 'gem',
  }
}
