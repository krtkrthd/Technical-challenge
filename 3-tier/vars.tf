variable "rgname" {
    description = "Application resouce group name"
    type = string
}
variable "rglocation" {
    description = "Location of resource group"
    type = string
}
variable "vnetcidr" {
    description = "Virtual network IP range"
}
variable "websubnetcidr" {
    description = "Web subnet IP range"
}
variable "appsubnetcidr" {
    description = "App subnet IP range"
}
variable "dbsubnetcidr" {
    description = "Database subnet IP range"
}
variable "web_host_name"{
    description = "Web host name "
    type = string
}
variable "web_username" {
    description = "Web host username"
    type = string
}
variable "web_os_password" {
    description = "Web host operating system password"
    type = string
}
variable "app_host_name"{
    description = "App host name"
    type = string
}
variable "app_username" {
    description = "App host username"
    type = string
}
variable "app_os_password" {
    description = "App host operating system password"
    type = string
}
variable "primary_database" {
    description = "Primary Database name"
    type = string
}
variable "primary_database_admin" {
    description = "Primary database admin username"
    type = string
}
variable "primary_database_password" {
    description = "Primary database password"
    type = string
}
variable "primary_database_version" {
    description = "Primary database version"
}




