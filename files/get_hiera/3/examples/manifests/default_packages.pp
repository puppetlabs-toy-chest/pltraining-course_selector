class examples::default_packages (
  $list = ['vim','less']
){
  package { $list:
    ensure => present
  }
}
