class course_selector::course::get_hiera3 (
  $unit = '3'
){
  file { "/etc/puppetlabs/code/hieradata":
    ensure  => directory,
    recurse => true,
    replace => false,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/hieradata",
  }
  file { "/etc/puppetlabs/code/hiera.yaml":
    ensure  => file,
    replace => false,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/hiera.yaml",
  }
  file { ["/root/puppetcode/hieradata", "/root/puppetcode/hieradata/nodes"]:
    ensure => directory,
  }
  file { "/root/puppetcode/hieradata/common.yaml":
    ensure  => file,
    replace => false,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/hieradata/common.yaml",
  }
  file { "/root/puppetcode/modules/examples":
    ensure  => directory,
    recurse => true,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/examples",
  }
  file { "/root/puppetcode/hieradata/nodes/${::fqdn}.yaml":
    ensure  => file,
    replace => false,
    content => '---',
  }
}
