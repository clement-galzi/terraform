# Pulls the image
resource "docker_image" "image" {
  name = var.image
}

# Create a container
resource "docker_container" "container" {
  count = var.number_container
  image = docker_image.image.image_id
  name  = "container_test${count.index}"
  memory = var.memory
  privileged = var.privileged
  ports {
    internal = 80
    external = var.starting_port + count.index
  }
}
