resource "aws_instance" "my_instance" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = var.AWS_INSTANCE_FLAVOR
  key_name      = aws_key_pair.mykeypair.key_name
}