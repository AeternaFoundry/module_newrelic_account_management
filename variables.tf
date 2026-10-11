variable "account_managements" {
  description = <<EOT
Map of account_managements, attributes below
Required:
    - name
Optional:
    - region
    - timeouts (block):
        - create (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name   = string
    region = optional(string)
    timeouts = optional(object({
      create = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

