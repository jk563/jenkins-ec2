resource "aws_route_table" "jenkins" {
  vpc_id = aws_vpc.jenkins.id
}
