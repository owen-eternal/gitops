module "tf-aws-network" {
  source          = "git@github.com:owen-eternal/tf-aws-network-mod.git"
  vpc_cdir        = var.network[var.workspace].vid
  project_name    = "hyroku"
  environment     = var.workspace
  web_server_port = null
  database        = var.database
  db_server_port  = null
  subnet_cdir     = var.network[var.workspace].subnets
  ipaddr          = var.ipaddr
}