resource "aws_subnet" "jenkins" {
  count = var.subnets

  vpc_id     = aws_vpc.jenkins.id
  cidr_block = cidrsubnet(aws_vpc.jenkins.cidr_block, 1, count.index)
}
