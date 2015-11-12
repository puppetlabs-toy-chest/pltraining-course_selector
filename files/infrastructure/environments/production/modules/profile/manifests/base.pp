class profile::base {
  # Resource declaration
  # This doesn't really merit the creation of a new class,
  # but it could grow to the point where a class that
  # manages these (or one class each) could be used instead.
  # The emphasis is on iterating quickly.
  # Ensure that the packages wget and vim-common are installed:
  package { ['wget', 'vim-common']:
    ensure => present,
  }

  # The following example includes a class to manage host
  # entries in /etc/hosts for all your agent nodes
  include classroom::agent::hosts

  # Class declaration using 'include'
  # use appropriate syntax to declare the class 'ssh::client'
  include 

  # Resource-like class declaration
  # Declare the appropriate class to manage logrotate here
  # Configure logrotate to preserve logs for 180 days, and
  # to compress the logs.

  class { '':
    ensure => present,
    config => {
      maxage   => ,
      compress => ,
    }
  }

  # declaring a defined resource type
  # declare a new logrotate rule for /var/log/messages
  # ensure that this log is rotated every week.

  logrotate::rule { 'messages':
    path         => '',
    rotate_every => '',
    postrotate   => '/usr/bin/killall -HUP syslogd',
  }

}
