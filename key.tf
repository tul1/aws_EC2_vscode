resource "aws_key_pair" "ec2_instance_key" {
  key_name   = "ec2_instance_key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}