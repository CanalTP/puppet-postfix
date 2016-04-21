class postfix::config (
  $file_path       = $postfix::config_file_path,
  $file_name       = $postfix::config_file_name,
  $myhostname      = $postfix::config_myhostname,
  $myorigin        = $postfix::config_myorigin,
  $inet_interfaces = $postfix::config_inet_interfaces,
  $relayhost       = $postfix::config_relayhost,
  $is_noop         = $postfix::if_noop,
) {

  file { "${file_path}/${file_name}":
    ensure  => file,
    content => template('postfix/main.cf.erb'),
    noop    => $is_noop,
  }

}
