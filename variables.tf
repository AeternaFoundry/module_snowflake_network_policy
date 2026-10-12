variable "network_policies" {
  description = <<EOT
Map of network_policies, attributes below
Required:
    - name
Optional:
    - allowed_ip_list
    - allowed_network_rule_list
    - blocked_ip_list
    - blocked_network_rule_list
    - comment
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                      = string
    allowed_ip_list           = optional(set(string))
    allowed_network_rule_list = optional(set(string))
    blocked_ip_list           = optional(set(string))
    blocked_network_rule_list = optional(set(string))
    comment                   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

