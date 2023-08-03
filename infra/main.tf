module "tf-aws-network" {
  source          = "git@github.com:owen-eternal/tf-aws-network-mod.git"
  vpc_cdir        = var.vpc_cdir
  project_name    = "hyroku"
  environment     = terraform.workspace
  web_server_port = null
  database        = var.database
  db_server_port  = null
  subnet_cdir     = tomap(var.subnet_cdir)
  ipaddr          = var.ipaddr
}