resource "docker_image" "db" {
  name = "mysql:8.0"
}

resource "docker_container" "db" {
  name  = "bd"
  image = docker_image.db.image_id

  env = [
    "MYSQL_ROOT_PASSWORD=123456",
    "MYSQL_DATABASE=labdb"
  ]

  ports {
    internal = 3306
    external = 4003
  }

  networks_advanced {
    name = docker_network.labnet.name
  }
}