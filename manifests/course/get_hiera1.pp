class course_selector::course::get_hiera1 (
  $unit = '1'
){
  file { "/etc/puppetlabs/code/environments/production/hieradata":
    ensure  => directory,
    recurse => true,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/hieradata",
  }
}
