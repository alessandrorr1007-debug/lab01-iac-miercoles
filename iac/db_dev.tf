resource "docker_image" "db_dev" {
  name = "mysql:8.0"
}

resource "docker_container" "db_dev" {
  name  = "bddev"
  image = docker_image.db_dev.image_id

  env = [
    "MYSQL_ROOT_PASSWORD=123456",
    "MYSQL_DATABASE=labdb_dev"
  ]

  ports {
    internal = 3306
    external = 5003
  }

  networks_advanced {
    name = docker_network.labnet.name
  }
}