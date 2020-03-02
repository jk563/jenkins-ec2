resource "aws_launch_template" "master" {
  image_id = var.master_ami

  instance_type = var.master_instance_type
}

