class postfix::install (
  $package_name   = $postfix::package_name,
  $package_ensure = $postfix::package_ensure,
  $is_noop        = $postfix::if_noop,
) {

  package { $package_name:
    ensure => $package_ensure,
    noop   => $is_noop,
  }

}
