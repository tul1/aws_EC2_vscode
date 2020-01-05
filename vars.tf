variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "PATH_TO_PUBLIC_KEY" {}
variable "AWS_INSTANCE_FLAVOR" {
    default = "t2.micro"
}
variable "AWS_REGION" {
  default = "eu-west-3"
}
variable "AMIS" {
  default = {
    eu-west-3 = "ami-00c60f4df93ff408e"
  }
}
