resource "docker_image" "api_dev" {
  name = "lab/api_dev"

  build {
    context = "../src/api"
  }
}

resource "docker_container" "api_dev" {
  name  = "apidev01"
  image = docker_image.api_dev.image_id

  ports {
    internal = 4002
    external = 5002
  }

  networks_advanced {
    name = docker_network.labnet.name
  }
}