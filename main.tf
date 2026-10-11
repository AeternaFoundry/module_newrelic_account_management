resource "newrelic_account_management" "account_managements" {
  for_each = var.account_managements

  name   = each.value.name
  region = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

