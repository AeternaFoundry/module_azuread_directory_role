resource "azuread_directory_role" "directory_roles" {
  for_each = var.directory_roles

  display_name = each.value.display_name
  template_id  = each.value.template_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

