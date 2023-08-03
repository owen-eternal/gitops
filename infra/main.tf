module "tf-aws-network" {
  source          = "git@github.com:owen-eternal/tf-aws-network-mod.git"
  vpc_cdir        = var.vpc_cdir
  project_name    = "hyroku"
  environment     = terraform.workspace
  web_server_port = null
  database        = var.database
  db_server_port  = null
  subnet_cdir     = {
    web = var.web_cidrs 
    db  = var.db_cidrs
  }
  ipaddr          = var.ipaddr
}