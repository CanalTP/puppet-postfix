class postfix (
  $package_ensure = installed,
  $package_name   = 'postfix',
  $is_noop        = $::clientnoop,
) {

  class{'::postfix::install': } ->
  Class['postfix']

}
