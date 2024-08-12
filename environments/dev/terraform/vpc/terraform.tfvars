vpc_cidr            = "10.1.0.0/16"
availability_zone1  = "eu-north-1a"
availability_zone2  = "eu-north-1b"
vpc_name            = "dev-vpc"

subnet_cidr_public1       = "10.1.1.0/24"
subnet_cidr_public2       = "10.1.2.0/24"
subnet_cidr_private1      = "10.1.3.0/24"
subnet_cidr_private2      = "10.1.4.0/24"
subnet_public1_name       = "public-subnet-1"
subnet_public2_name       = "public-subnet-2"
subnet_private1_name      = "private-subnet-1"
subnet_private2_name      = "private-subnet-2"


igw_name            = "dev-igw"
route_table_name    = "dev-route-table"
environment_tags = {
  Environment = "dev"
}
aws_region         = "eu-north-1"
sub_account_id     = "024848457167"
