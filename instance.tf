resource "aws_instance" "my_instance" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = var.AWS_INSTANCE_FLAVOR
  key_name      = aws_key_pair.mykeypair.key_name
  provisioner "local-exec" {
    #Add host to ./ssh/config
    command = "sh ./scripts/add_host.sh my_instance ${self.public_ip} ubuntu ~/aws_EC2_vscode/ssh_keys/mykey >> ~/.ssh/config"
  }
  # TODO needs a rework, for now you should delete it manually
  # provisioner "local-exec" {
  #     # remove host from ./ssh/config
  #     when    = destroy
  #     command = "sh ./scripts/remove_host.sh my_instance ${self.public_ip} ubuntu ~/aws_EC2_vscode/ssh_keys/mykey ~/.ssh/config > ~/.ssh/config"
  # }
}