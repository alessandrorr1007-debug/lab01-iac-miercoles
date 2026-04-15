resource "docker_image" "api" {
  name = "lab/api"

  build {
    context = "../src/api"
  }
}

resource "docker_container" "api" {
  name  = "api01"
  image = docker_image.api.image_id

  ports {
    internal = 4002
    external = 4002
  }

  networks_advanced {
    name = docker_network.labnet.name
  }
}