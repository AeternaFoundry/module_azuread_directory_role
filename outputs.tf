output "directory_roles_id" {
  description = "Map of id values across all directory_roles, keyed the same as var.directory_roles"
  value       = { for k, v in azuread_directory_role.directory_roles : k => v.id }
}
output "directory_roles_description" {
  description = "Map of description values across all directory_roles, keyed the same as var.directory_roles"
  value       = { for k, v in azuread_directory_role.directory_roles : k => v.description }
}
output "directory_roles_display_name" {
  description = "Map of display_name values across all directory_roles, keyed the same as var.directory_roles"
  value       = { for k, v in azuread_directory_role.directory_roles : k => v.display_name }
}
output "directory_roles_object_id" {
  description = "Map of object_id values across all directory_roles, keyed the same as var.directory_roles"
  value       = { for k, v in azuread_directory_role.directory_roles : k => v.object_id }
}
output "directory_roles_template_id" {
  description = "Map of template_id values across all directory_roles, keyed the same as var.directory_roles"
  value       = { for k, v in azuread_directory_role.directory_roles : k => v.template_id }
}

