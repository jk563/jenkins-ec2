resource "aws_vpc_endpoint" "ssm" {
  vpc_id             = aws_vpc.jenkins.id
  service_name       = "com.amazonaws.${data.aws_region.current.name}.ssm"
  vpc_endpoint_type  = "Interface"
  security_group_ids = [aws_security_group.ssm_vpce.id]
  subnet_ids         = aws_subnet.jenkins.*.id
	private_dns_enabled = true
}

resource "aws_vpc_endpoint" "ssmmessages" {
  vpc_id             = aws_vpc.jenkins.id
  service_name       = "com.amazonaws.${data.aws_region.current.name}.ssmmessages"
  vpc_endpoint_type  = "Interface"
  security_group_ids = [aws_security_group.ssm_vpce.id]
  subnet_ids         = aws_subnet.jenkins.*.id
	private_dns_enabled = true
}

resource "aws_vpc_endpoint" "ec2messages" {
  vpc_id             = aws_vpc.jenkins.id
  service_name       = "com.amazonaws.${data.aws_region.current.name}.ec2messages"
  vpc_endpoint_type  = "Interface"
  security_group_ids = [aws_security_group.ssm_vpce.id]
  subnet_ids         = aws_subnet.jenkins.*.id
	private_dns_enabled = true
}

resource "aws_security_group" "ssm_vpce" {
	vpc_id      = aws_vpc.jenkins.id
}

resource "aws_security_group_rule" "ingress_core" {
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.core.id

  security_group_id = aws_security_group.ssm_vpce.id
}

