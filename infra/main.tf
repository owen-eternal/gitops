resource "aws_vpc" "vpc" {
  cidr_block = var.environment[terraform.workspace].network_id

  tags = {
    Name = "${terraform.workspace}-network"
  }
}

resource "aws_subnet" "subnet" {
  for_each                = var.environment[terraform.workspace].subnets
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = each.value.network_id
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = each.value.map_public_ip_on_launch

  tags = {
    Name = "${terraform.workspace}-${each.key}"
  }
}