class postfix::config (
  $file_path = $postfix::config_file_path,
  $file_name = $postfix::config_file_name,
  $is_noop   = $postfix::if_noop,
) {

  file { "${file_path}/${file_name}":
    ensure  => file,
    content => template('postfix/main.cf.erb'),
    noop    => $is_noop,
  }

}
