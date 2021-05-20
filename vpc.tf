module "network" {
  source  = "app.terraform.io/murattalu2021-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "db_net"
  project_id = var.project_id
  subnets = [
  {
    subnet_name   = "gram-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
  ]
}