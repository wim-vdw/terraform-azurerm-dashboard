variable "location" {
  type        = string
  description = "The region for the dashboard"
}

variable "resource_group" {
  description = "The resource group for the dashboard"
  type = object({
    id       = string
    name     = string
    location = string
    tags     = map(string)
  })
}

variable "name" {
  type        = string
  description = "The name for the dashboard"
}

variable "title" {
  type        = string
  description = "The title for the dashboard"
}

variable "dashboard_properties" {
  type        = string
  description = "The JSON content template for the dashboard"
}

variable "additional_tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the resource"
}
