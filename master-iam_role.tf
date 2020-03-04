resource "aws_iam_role" "master" {
  assume_role_policy = data.aws_iam_policy_document.ec2-assume-role.json
}

resource "aws_iam_instance_profile" "master" {
  role = aws_iam_role.master.name
}

resource "aws_iam_role_policy_attachment" "master_ssm" {
  role       = aws_iam_role.master.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

}
