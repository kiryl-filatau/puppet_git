class sql { 
 class{ '::mysql::server':
    root_password    => 'password',
    override_options => {
      'mysqld' => { 'max_connections' => '1024' }
    },
  }
  include ::mysql::server::account_security

  mysql_database { 'prod_kfdb':
    ensure  => present,
    charset => 'utf8',
  }

  mysql_user { 'prod_kirya@localhost':
    ensure => present,
  }

  mysql_grant { 'prod_kirya@localhost/prod_kfdb.*':
    ensure      => present,
    options     => ['GRANT'],
    privileges  => ['ALL'],
    table       => 'prod_kfdb.*',
    user        => 'prod_kirya@localhost',
  }
}
