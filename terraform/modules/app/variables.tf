variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}
variable subnet_id {
description = "Subnet id"
}
#variable db_nat_ip_address {
#  description = "db ip address"
#}
variable private_key_path {
  description = "Path to the private key used for ssh access"
  default = "~/.ssh/id_ed25519"
}
variable db_nat_ip_address {
  description = "db vm ip address"
  default     = "N/A"
}
