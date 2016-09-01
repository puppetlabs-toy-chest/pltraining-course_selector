class examples::firewall_rules (
  $open_ports_inbound = [80,22,443],
  $block_others = true
) {

  firewall { "100 allow ${open_ports_inbound} inbound":
    dport  => $open_ports_inbound,
    proto  => tcp,
    action => accept,
  }

  $action = $block_others ? {
    'drop'   => true,
    'accept' => false,
  }
  firewall { "999 ${action} all other requests":
    action => $action,
  }
}
