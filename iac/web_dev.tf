resource "docker_image" "web_dev" {
  name = "lab/web_dev"

  build {
    context    = "../src/web"
    dockerfile = "Dockerfile.dev"
  }
}

resource "docker_container" "web_dev" {
  name  = "web-dev-01"
  image = docker_image.web_dev.image_id

  ports {
    internal = 80
    external = 5001
  }

  networks_advanced {
    name = docker_network.labnet.name
  }

  depends_on = [docker_container.api_dev]
}