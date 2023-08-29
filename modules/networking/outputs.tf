output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets_ids" {
  value = aws_subnet.public.*.id
}

output "public_subnets_cidr" {
  value = aws_subnet.public.*.cidr_block
}

output "web_subnets_ids" {
  value = aws_subnet.web.*.id
}

output "web_subnets_cidr" {
  value = aws_subnet.web.*.cidr_block
}


output "rds_subnets_ids" {
  value = aws_subnet.rds.*.id
}

output "rds_subnets_cidr" {
  value = aws_subnet.rds.*.cidr_block
}

