output "network_policies_id" {
  description = "Map of id values across all network_policies, keyed the same as var.network_policies except keys with no id are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_policies_allowed_ip_list" {
  description = "Map of allowed_ip_list values across all network_policies, keyed the same as var.network_policies except keys with no allowed_ip_list are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.allowed_ip_list if v.allowed_ip_list != null && length(v.allowed_ip_list) > 0 }
}
output "network_policies_allowed_network_rule_list" {
  description = "Map of allowed_network_rule_list values across all network_policies, keyed the same as var.network_policies except keys with no allowed_network_rule_list are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.allowed_network_rule_list if v.allowed_network_rule_list != null && length(v.allowed_network_rule_list) > 0 }
}
output "network_policies_blocked_ip_list" {
  description = "Map of blocked_ip_list values across all network_policies, keyed the same as var.network_policies except keys with no blocked_ip_list are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.blocked_ip_list if v.blocked_ip_list != null && length(v.blocked_ip_list) > 0 }
}
output "network_policies_blocked_network_rule_list" {
  description = "Map of blocked_network_rule_list values across all network_policies, keyed the same as var.network_policies except keys with no blocked_network_rule_list are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.blocked_network_rule_list if v.blocked_network_rule_list != null && length(v.blocked_network_rule_list) > 0 }
}
output "network_policies_comment" {
  description = "Map of comment values across all network_policies, keyed the same as var.network_policies except keys with no comment are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "network_policies_describe_output" {
  description = "Map of describe_output values across all network_policies, keyed the same as var.network_policies except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "network_policies_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all network_policies, keyed the same as var.network_policies except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "network_policies_name" {
  description = "Map of name values across all network_policies, keyed the same as var.network_policies except keys with no name are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_policies_show_output" {
  description = "Map of show_output values across all network_policies, keyed the same as var.network_policies except keys with no show_output are omitted"
  value       = { for k, v in snowflake_network_policy.network_policies : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

