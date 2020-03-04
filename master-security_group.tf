resource "aws_security_group" "core" {
  name        = "core"
  description = "Core rules for all nodes"
  vpc_id      = aws_vpc.jenkins.id
}

resource "aws_security_group_rule" "egress_ssm" {
  type                     = "egress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.ssm_vpce.id

  security_group_id = aws_security_group.core.id
}

