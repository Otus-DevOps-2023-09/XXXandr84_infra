terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "y0_AgAAAAANhbUxAATuwQAAAADwOAnXDE7wVMBVQ9Kr9F8U0ik1UysRAsY"
  cloud_id  = "b1gks1e9rlvg2griti9l"
  folder_id = "b1g3ag9m932ds92jhgtr"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "app" {
name = "reddit-base-1698741881"
resources {
cores = 2
memory = 2
}
metadata = {
  ssh-keys = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"}
boot_disk {
initialize_params {
# Указать id образа созданного в предыдущем домашнем задании
image_id = "fd8ngj7246dt52oo9ckh"
}
}
network_interface {
# Указан id подсети default-ru-central1-a
subnet_id = "e9b3c3psr2ev2v2di99u"
nat = true
}
connection {
  type = "ssh"
  host = yandex_compute_instance.app.network_interface.0.nat_ip_address
  user = "ubuntu"
  agent = false
  # путь до приватного ключа
  private_key = file("~/.ssh/id_ed25519")
  }

  provisioner "file" {
  source = "files/puma.service"
  destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
  script = "files/deploy.sh"
  }
}
