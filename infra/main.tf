#####################################
############ Modules ################
#####################################

module "tf-aws-network" {
  source          = "git@github.com:owen-eternal/tf-aws-network-mod.git"
  db_server_port  = null
  database        = var.database
  environment     = terraform.workspace
  ipaddr          = var.ipaddr
  project_name    = "hyroku"
  subnet_cdir     = var.network[terraform.workspace].subnets
  vpc_cdir        = var.network[terraform.workspace].vid
  web_server_port = null
}

module "tf-aws-web-tier" {
  source             = "git@github.com:owen-eternal/tf-aws-app-tier-mod.git"
  app_ami            = var.app_ami
  app_instance_type  = var.app_instance_type
  ssh_key_pair       = var.ssh_key_pair
  prefix             = module.tf-aws-network.tag_name
  lb_security_group  = module.tf-aws-network.lb_security_group_id
  web_port           = module.tf-aws-network.application_port
  web_security_group = module.tf-aws-network.web_security_group_id
  web_subnets        = module.tf-aws-network.web_subnet_ids
  vpc_id             = module.tf-aws-network.vpc_id
}

#####################################
############ Resources ##############
#####################################