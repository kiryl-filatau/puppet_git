class java {
  package { 'java-1.6.0-openjdk-devel.x86_64':
    ensure => 'installed',
    before => Class["jboss::install"],
  }
}
