class deploy {
  file { '/opt/jboss-6.1.0.Final/server/default/deploy/tesweb.war':
    ensure => present,
    source => 'puppet:///modules/deploy/testweb.war',
    require => Service['jboss']
  }
}
