variable "PATH_TO_PUBLIC_KEY" {
  description = "Path to your public key."
}
variable "PATH_TO_PRIVATE_KEY" {
  description = "Path to your private key."
}
variable "AMI_LOGIN_USR" {
  description = "AMI user login (i.e. ubuntu or root)."
}
variable "INSTANCES_NUM" {
  description = "Number of instances you'll like to create."
}
variable "AWS_INSTANCE_FLAVOR" {
  description = "AWS instance flavor of your machines."
  default     = "t2.micro"
}
variable "AWS_REGION" {
  description = "AWS region where your instance/s will be created."
  default     = "eu-west-3"
}
variable "AWS_REGION_AZ" {
  description = "AWS region's AZ where your instance/s will be created."
  default = {
    eu-west-3 = "eu-west-3a"
  }
}
variable "AMIS" {
  description = "AWS OS image your instance will carry."
  default = {
    eu-west-3 = "ami-00c60f4df93ff408e"
  }
}
