variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable reddit-app {
  description = "reddit-app"
  # �������� �� ���������
  default = "reddit-base-1698741881"
}
#variable "reddit-app-network" {
#  description = "Subnet"
#}
#variable "reddit-app-subnet" {
#  description = "Subnet"
#}
#variable app_disk_image {
#  description = "Disk image for reddit app"
#  default = "reddit-app-base"
#}
variable "db_disk_image" {
  description = "Disk image"
  default = "reddit-app-base"

}

#variable "db_disk_image" {
#  description = "Disk image"
#  default = "reddit-app-base"
#
#}

variable "image_id" {
  description = "Disk image"
	default = "fd8ngj7246dt52oo9ckh"
}


variable db_nat_ip_address {
  description = "db vm ip address"
  default     = "N/A"
}
variable "subnet_id" {
 description = "Subnet"
}


