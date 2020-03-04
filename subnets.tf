resource "aws_subnet" "jenkins" {
  count = var.subnets

  vpc_id            = aws_vpc.jenkins.id
  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = cidrsubnet(aws_vpc.jenkins.cidr_block, 1, count.index)
}
