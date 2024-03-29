terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

resource "yandex_compute_instance" "app" {
  count = var.app_scale # count servers
  name        = "reddit-app-${count.index}-tf"
  #name = "reddit-app"

  labels = {
    tags = "reddit-app"
  }
  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id =  var.app_disk_image # var.image_id # var.app_disk_image
    }
  }

  network_interface {
   # subnet_id = yandex_vpc_subnet.app-subnet.id
subnet_id = var.subnet_id    
nat = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}

