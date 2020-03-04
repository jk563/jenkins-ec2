resource "aws_launch_template" "master" {
  image_id = var.master_ami

  instance_type = var.master_instance_type

  vpc_security_group_ids = [aws_security_group.core.id]

	iam_instance_profile {
		name = aws_iam_instance_profile.master.name
	}
}

