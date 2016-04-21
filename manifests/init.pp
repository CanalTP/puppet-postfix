class postfix (
  $package_name           = 'postfix',
  $package_ensure         = installed,
  $config_file_path       = '/etc/postfix',
  $config_file_name       = 'main.cf',
  $config_mydestination   = [],
  $config_myhostname      = $::fqdn,
  $config_myorigin        = $::fqdn,
  $config_inet_interfaces = 'all',
  $config_relayhost       = undef,
  $service_name           = 'postfix',
  $service_ensure         = running,
  $service_enable         = true,
  $is_noop                = $::clientnoop,
) {

  class{'::postfix::install': } ->
  class{'::postfix::config': } ~>
  class{'::postfix::service': } ~>
  Class['postfix']

}
