variable "subscription_id" { type = string }
variable "prefix" { type = string }
variable "location" { type = string; default = "westeurope" }
variable "admin_cidr" { type = string }
variable "ssh_public_key_path" { type = string }
variable "vm_size" { type = string; default = "Standard_B1s" }
