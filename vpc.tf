resource "aws_vpc" "jenkins" {
  cidr_block = var.vpc_cidr
	enable_dns_hostnames = true
}
