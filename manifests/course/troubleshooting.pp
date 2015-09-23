class course_selector::course::troubleshooting {
  include course_selector
  file {'/usr/local/bin/':
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/troubleshooting/scripts/',
    mode    => '0755',
  }
  file {'/root/.bashrc.puppet':
    ensure => present,
    source => 'puppet:///modules/course_selector/troubleshooting/bashrc.puppet',
  }
  file {'/root/.tmux.conf':
    ensure => absent,
  }
  file {"${settings::codedir}/modules":
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/course_selector/troubleshooting/example_modules/',
  }
}
