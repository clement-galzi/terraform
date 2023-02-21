module "container" {
  source = "git@github.com:clement-galzi/terraform.git//module"
  memory           = 200
  number_container = 3
  privileged       = false
  starting_port    = 3000
  image = "nginx:latest"
}