variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
  default = "11111111111111111111"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "image_id" {
  description = "Disk image"
}

variable "service_account_key_file" {
  description = "key .json"
}
variable "private_key_path" {
  description = "Path to the private key used for ssh access"
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
variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}
variable "db_disk_image" {
  description = "Disk image"
  default = "reddit-app-base"

}
variable db_nat_ip_address {
  description = "db vm ip address"
  default     = "N/A"
}
variable "subnet_id" {
  description = "Subnet"
default = "subnet_id"
}



variable "bucket_name" {
  description = "Folder"
}

variable "access_key" {
  description = "Folder"
}

variable "secret_key" {
  description = "Folder"
}

#variable "folder_id" {
#  description = "Folder"
#}
