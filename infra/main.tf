module "tf-aws-network" {
  source          = "git@github.com:owen-eternal/tf-aws-network-mod.git"
  vpc_cdir        = var.vpc_cdir
  project_name    = "hyroku"
  environment     = terraform.workspace
  web_server_port = null
  database        = var.database
  db_server_port  = null
  subnet_cdir     = tomap({web = ["10.0.0.0/18", "10.0.64.0/18"], db  = []})
  ipaddr          = var.ipaddr
}