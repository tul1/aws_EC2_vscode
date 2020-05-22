output "instance-public-ip" {
  value = aws_instance.my_instance.*.public_ip
}

output "instance-private-ip" {
  value = aws_instance.my_instance.*.private_ip
}