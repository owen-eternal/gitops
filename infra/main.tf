resource "aws_vpc" "vpc" {
  cidr_block = var.env_cblocks[terraform.workspace]
  count      = var.environment[terraform.workspace] ? 1 : 0

  tags = {
    Name = "${terraform.workspace}-network"
  }
}