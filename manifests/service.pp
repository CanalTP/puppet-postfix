class postfix::service (
  $service_name   = $postfix::service_name,
  $service_ensure = $postfix::service_ensure,
  $service_enable = $postfix::service_enable,
  $is_noop        = $postfix::if_noop,
) {

  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
    noop   => $is_noop,
  }

}
