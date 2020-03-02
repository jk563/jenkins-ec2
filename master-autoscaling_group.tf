resource "aws_autoscaling_group" "master" {
  min_size = 1
  max_size = 1

  launch_template {
    id = aws_launch_template.master.id
  }

  vpc_zone_identifier = aws_subnet.jenkins.*.id
}
