class profile::mysqldb {
  $override_options = {
    'mysqld' => {
      'bind-address' => '0.0.0.0',
    }
  } 
  class { 'mysql::server':
    root_password    => 'supersekrit',
    override_options => $override_options,
    restart          => true,
  }
  mysql::db {'wordpress':
    user     => 'wordpress',
    password => ,
    host     => 'localhost',
    grant    => ['ALL']
  }
  mysql_grant { 'wordpress@%/*.*':
    ensure     => 'present',
    options    => ['GRANT'],
    privileges => ,
    table      => '*.*',
    user       => 'wordpress@%',
  }
  mysql_user { 'wordpress@%':
    ensure   => 'present',
    password_hash => mysql_password('wordpress')
  }
}
