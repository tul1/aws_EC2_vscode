# AWS virtual machine for VSCode Insiders
[![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D0.12-blue)](https://github.com/hashicorp/terraform/)
[![VSCode Insiders Version](https://img.shields.io/badge/VScode%20Insiders-%3D%3E1.41.1-green)](https://code.visualstudio.com/insiders/)
[![vscode-remote-release](https://img.shields.io/badge/VScode--remote-doc-brightgreen)](https://code.visualstudio.com/docs/remote/remote-overview)


A simple EC2 instance ready to be connected via Visual Studio Code Insiders via ssh.

## Get VScode insiders, VSCode remote extension and Terraform
Download and install VSCode insiders from here: https://code.visualstudio.com/insiders/

Install this extension pluggin in your VSCode: https://code.visualstudio.com/docs/remote/remote-overview

Download and install Terraform from here : https://www.terraform.io/downloads.html

## Create your ssh_key
Create you ssh key to create an AWS keypair later.
```
mkdir ssh_keys && ssh-keygen -f ./ssh_keys/mykey
```

## Create your instance
Run the code in the box beneath and type 'yes' afterwards:
```
terraform init
terraform apply
```
## Connect to your instance
![](https://github.com/microsoft/vscode-remote-release/blob/master/docs/images/ssh-readme.gif)

## Destroy your instance
:warning: Amazon charges us the minute for every alive instance we own, therefore having an unattended or an unused instance could cost us a lot. In order to destroy the machine that you've just created you need to run these lines followed by 'yes':
```
terraform destroy
```
