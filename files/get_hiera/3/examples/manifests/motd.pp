class examples::motd (
  $message = 'Hello'
){
  file { '/etc/motd':
    ensure  => file,
    content => $message,
  }
}
