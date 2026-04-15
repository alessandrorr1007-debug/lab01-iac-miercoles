resource "docker_image" "web" {
  name = "lab/web"

  build {
    context = "../src/web"
  }
}

resource "docker_container" "web" {
  name  = "web-localhost-01"
  image = docker_image.web.image_id

  ports {
    internal = 80
    external = 4001
  }

  networks_advanced {
    name = docker_network.labnet.name
  }

  depends_on = [docker_container.api]
}