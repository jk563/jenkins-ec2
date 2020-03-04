resource "aws_launch_template" "agent" {
  image_id = var.agent_ami

  instance_type = var.agent_instance_type

  vpc_security_group_ids = [aws_security_group.core.id]

	iam_instance_profile {
		name = aws_iam_instance_profile.agent.name
	}
}

