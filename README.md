# AWS virtual machine for VSCode Insiders
[![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D0.12-blueviolet)](https://github.com/hashicorp/terraform/)
[![VSCode Insiders Version](https://img.shields.io/badge/VScode%20Insiders-%3E%3D1.41.1-green)](https://code.visualstudio.com/insiders/)
[![vscode-remote-release](https://img.shields.io/badge/VScode--remote-doc-blue)](https://code.visualstudio.com/docs/remote/remote-overview)


A simple EC2 instance ready to be connected via Visual Studio Code Insiders via ssh.

## Get VScode insiders, VSCode remote extension and Terraform
Download and install VSCode insiders from here: https://code.visualstudio.com/insiders/

Install this extension pluggin in your VSCode: https://code.visualstudio.com/docs/remote/remote-overview

Download and install Terraform from here : https://www.terraform.io/downloads.html

## Create your ssh key
Create you ssh key to create an AWS keypair later.
```bash
mkdir ssh_keys && ssh-keygen -f ./ssh_keys/mykey
```

## Create your instance
Run the code in the box beneath and type 'yes' afterwards:
```bash
terraform init
terraform apply --auto-approve
```

To avoid typing your parameters everytime you launch this code you can create a local `tfvars` file containing your own specifications like this:
```terraform
PATH_TO_PUBLIC_KEY  = "/your/path/to/mykey.pub"
PATH_TO_PRIVATE_KEY = "/your/path/to/mykey"
AMI_LOGIN_USR       = "ami_login"
INSTANCES_NUM       = 1
```

## Connect to an instance with VSCode insiders
![](https://github.com/microsoft/vscode-remote-release/blob/master/docs/images/ssh-readme.gif)


## Modify instances number
This module will allow you to change the number of alive instances by running the following line:
 
```bash
terraform apply -target=aws_instance.my_instance -var INSTANCES_NUM=1
```

## Destroy your instance
:warning: AWS charges the minute for every alive instance, therefore, having an unattended or an unused vm could cost a lot. So, to destroy the machines you can run the following command:

```bash
terraform destroy --auto-approve
```