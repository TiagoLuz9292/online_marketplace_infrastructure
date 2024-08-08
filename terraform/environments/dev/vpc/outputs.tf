output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.public.*.id
}

output "route_table_id" {
  description = "The ID of the route table"
  value       = aws_route_table.main.id
}