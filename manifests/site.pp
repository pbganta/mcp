node default {
  include profile::certs
  $instance_tags = lookup('terraform.self.tags')
  notice(" Babu ${instance_tags}")

  $include_all = lookup('magic_castle::site::all', undef, undef, [])
  notice(" Babu ${include_all}")

  $include_tags = flatten(
    $instance_tags.map | $tag | {
      lookup("magic_castle::site::tags.${tag}", undef, undef, [])
    }
  )

  if lookup('magic_castle::site::enable_chaos', undef, undef, false) {
    $classes = shuffle($include_all + $include_tags)
    notify { 'Chaos order':
      message => String($classes),
    }
  } else {
    $classes = $include_all + $include_tags
  }
  include($classes)
  notice("babu ${classes}")

}

