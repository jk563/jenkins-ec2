resource "aws_autoscaling_group" "agent" {
  min_size = 1
  max_size = 1

  launch_template {
    id      = aws_launch_template.agent.id
    version = "$Latest"
  }

  vpc_zone_identifier = aws_subnet.jenkins.*.id
}
