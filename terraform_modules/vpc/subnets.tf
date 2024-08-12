resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr_public1
  availability_zone       = var.availability_zone1
  map_public_ip_on_launch = true
  tags                    = merge({ Name = var.subnet_public1_name }, var.environment_tags)
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr_public2
  availability_zone       = var.availability_zone2
  map_public_ip_on_launch = true
  tags                    = merge({ Name = var.subnet_public2_name }, var.environment_tags)
}

resource "aws_subnet" "private1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr_private1
  availability_zone       = var.availability_zone1
  map_public_ip_on_launch = false
  tags                    = merge({ Name = var.subnet_private1_name }, var.environment_tags)
}

resource "aws_subnet" "private2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr_private2
  availability_zone       = var.availability_zone2
  map_public_ip_on_launch = false
  tags                    = merge({ Name = var.subnet_private2_name }, var.environment_tags)
}

