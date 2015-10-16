class course_selector::params {
  $course = 'default'
  # Normally this would use the aio_agent_version fact
  # that is installed by the puppet_enterprise module
  # since we're installing puppet-agent, we'll use this fact instead
  $codedir = versioncmp('4.0.0',$puppetversion) ? {
    1       => '/etc/puppetlabs/puppet',
    default => '/etc/puppetlabs/code'
  }
  $ruby_binary = versioncmp('4.0.0',$puppetversion) ? {
    1       => '/opt/puppet/bin/ruby',
    default => '/bin/ruby'
  }
}
