variable "project_id" {
  description = "(Required) The ID of the project in which e resource belongs. If it is not provided, the provider project is used"
  type        = string
}
variable "dashboard_name" {
  description = "(Required) A short name or phrase used to identify the policy in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple policies in the same project. The name is limited to 512 Unicode characters."
  type        = string
}

