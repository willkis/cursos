exec { 'apt-update':                    
  command => '/usr/bin/apt-get update'  
}

package { ['php7.4', 'php7.4-mysql']:
  require => Exec['apt-update'],        
  ensure => installed,
}

exec { 'run-php7':
  require => Package['php7.4'],                    
  command => '/usr/bin/php -S 192.168.50.52:8888  -t /vagrant/src &'  
}

