module "container" {
  source = "/home/emait/terraform/module"
  memory           = 200
  number_container = 3
  privileged       = false
  starting_port    = 3000
  image = "nginx:latest"
}
