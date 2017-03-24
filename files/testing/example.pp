class example (
  file {'/etc/motd'
    ensure   => file
    contents => "This is a message of the day",
  }
  user {'foo':
    ensure  => 'present',
    require => File['/etc/motd']
  }
}
