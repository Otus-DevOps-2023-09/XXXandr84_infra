#terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#    }
<<<<<<< HEAD
#  }
=======
#  }#
>>>>>>> ansible-1
#  required_version = ">= 0.13"
#}

provider "yandex" {
  service_account_key_file = var.service_account_key_file
<<<<<<< HEAD
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

=======
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}
>>>>>>> ansible-1
module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}


#resource "yandex_compute_instance" "app" {
##  name = "reddit-base-1698741881"
#name = "reddit-app"
#  resources {
#    cores  = 2
#    memory = 2
<<<<<<< HEAD
#  }#
#
=======
#  }

#resource "yandex_vpc_network" "app-network" {
#name = "reddit-app-network"
#}

#resource "yandex_vpc_subnet" "app-subnet" {
#name = "reddit-app-subnet"
#zone = "ru-central1-a"
#network_id = "${yandex_vpc_network.app-network.id}"
#v4_cidr_blocks = ["192.168.10.0/24"]
#}


>>>>>>> ansible-1
#  boot_disk {
#    initialize_params {
#      # Указать id образа созданного в предыдущем домашем задании
#      image_id = var.image_id
#    }
<<<<<<< HEAD
#  }#
#
=======
#  }

>>>>>>> ansible-1
#  network_interface {
#    # Указан id подсети default-ru-central1-a
#    subnet_id = var.subnet_id
#    nat       = true
<<<<<<< HEAD
#  }#
#
#  metadata = {
#    ssh-keys = "ubuntu:${file(var.public_key_path)}"
#  }
#
=======
#  }

#  metadata = {
#    ssh-keys = "ubuntu:${file(var.public_key_path)}"
#  }

>>>>>>> ansible-1
#  connection {
#    type  = "ssh"
#    host  = yandex_compute_instance.app.network_interface.0.nat_ip_address
#    user  = "ubuntu"
#    agent = false
<<<<<<< HEAD
#    # РїСѓС‚СЊ РґРѕ РїСЂРёРІР°С‚РЅРѕРіРѕ РєР»СЋС‡Р°#
=======
#    # РїСѓС‚СЊ РґРѕ РїСЂРёРІР°С‚РЅРѕРіРѕ РєР»СЋС‡Р°
>>>>>>> ansible-1
#    private_key = file(var.private_key_path)
#    #private_key = file("/home/xandr/.ssh/id_ed25519")
#  }

#  provisioner "file" {
#    source      = "files/puma.service"
#    destination = "/tmp/puma.service"
#  }
<<<<<<< HEAD

#  provisioner "remote-exec" {
#    script = "files/deploy.sh"
#  }
#}
=======
#
#  provisioner "remote-exec" {
#    script = "files/deploy.sh"
#  }
#}
>>>>>>> ansible-1
