output "account_managements_id" {
  description = "Map of id values across all account_managements, keyed the same as var.account_managements"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.id }
}
output "account_managements_name" {
  description = "Map of name values across all account_managements, keyed the same as var.account_managements"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.name }
}
output "account_managements_region" {
  description = "Map of region values across all account_managements, keyed the same as var.account_managements"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.region }
}
output "account_managements_status" {
  description = "Map of status values across all account_managements, keyed the same as var.account_managements"
  value       = { for k, v in newrelic_account_management.account_managements : k => v.status }
}

