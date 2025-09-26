# Generic Input Variables
# Business Division
variable "business_division" {
  description = "Business Division in the large org this infra"
  type = string
  default = "sap"
}
# Envirnoment Variable
variable "environment" {
  description = "environment variable used as a prefix"
  type = string
  default = "dev"
}
# Azure Resource Group Name
variable "resource_group_name" {
  description = "Resource group name"
  type = string
  default = "rg-default"
}
# Azure Resource group Location
variable "resource_group_location" {
  description = "Region in which resources to be created"
  default = "eastus2"
  type = string
}

variable "subscription_id" {
  description = "This is subscription id"
  type = string
  sensitive = true
}