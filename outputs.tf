output "account_managements_id" {
  description = "Map of id values across all account_managements, keyed the same as var.account_managements except keys with no id are omitted"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_managements_name" {
  description = "Map of name values across all account_managements, keyed the same as var.account_managements except keys with no name are omitted"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.name if v.name != null && length(v.name) > 0 }
}
output "account_managements_region" {
  description = "Map of region values across all account_managements, keyed the same as var.account_managements except keys with no region are omitted"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.region if v.region != null && length(v.region) > 0 }
}
output "account_managements_status" {
  description = "Map of status values across all account_managements, keyed the same as var.account_managements except keys with no status are omitted"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.status if v.status != null && length(v.status) > 0 }
}

