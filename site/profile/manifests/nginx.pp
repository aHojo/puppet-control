class profile::nginx (
 Array $vhost,
)
{
  include ::nginx
 
  $vhost.each |$host| {
    #::nginx::vhost { $host['fqdn']: 
      port           => $host['port'],
      server_aliases => $host['server_aliases'],
    }
  }
}
