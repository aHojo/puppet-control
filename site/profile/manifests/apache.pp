class profile::apache (
  Hash $apache_vhost_servers,
  #Boolean $default_vhost = false,
  #Integer $port = 80, 
  #String $docroot = '/var/www/test',
) {
  class { '::apache':
     default_vhost => $default_vhost,
  }

  #::apache::vhost { 'criticalhojo4c.mylabserver.com':
  #  port    => $port,
  #  docroot => $docroot, 
  #}

  create_resources(::apache::vhost, $apache_vhost_servers)
}
