resource "snowflake_network_policy" "network_policies" {
  for_each = var.network_policies

  name                      = each.value.name
  allowed_ip_list           = each.value.allowed_ip_list
  allowed_network_rule_list = each.value.allowed_network_rule_list
  blocked_ip_list           = each.value.blocked_ip_list
  blocked_network_rule_list = each.value.blocked_network_rule_list
  comment                   = each.value.comment

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

