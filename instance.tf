resource "aws_instance" "my_instance" {
  count           = var.INSTANCES_NUM
  ami             = var.AMIS[var.AWS_REGION]
  instance_type   = var.AWS_INSTANCE_FLAVOR
  key_name        = aws_key_pair.ec2_instance_key.key_name
  subnet_id       = aws_subnet.main-public.id
  security_groups = [aws_security_group.my-instance-securitygroup.id]
  provisioner "local-exec" {
    command = "sh ./scripts/add_host.sh my_instance_${count.index} ${self.public_ip} ${var.AMI_LOGIN_USR} ${var.PATH_TO_PRIVATE_KEY} >> ~/.ssh/config"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "sh ./scripts/remove_host.sh my_instance_${count.index} ~/.ssh/config"
  }
}