# AWS virtual machine for VSCode Insiders
[![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D0.12-blue)](https://github.com/hashicorp/terraform/)
[![VSCode Insiders Version](https://img.shields.io/badge/VScode%20Insiders-%3D%3E1.41.1-green)](https://code.visualstudio.com/insiders/)
[![vscode-remote-release](https://img.shields.io/badge/VScode--remote-doc-brightgreen)](https://code.visualstudio.com/docs/remote/remote-overview)


A simple EC2 instance ready to be connected via Visual Studio Code Insiders via ssh.

## Get VScode insiders
Download and follow the instructions of this site: https://code.visualstudio.com/insiders/

## Create your ssh_key
First create you ssh key to create an aws keypair later.
```
mkdir ssh_keys && ssh-keygen -f ./ssh_keys/mykey
```

## Create your instance
Run the code in the box beneath:
```
terraform init
terraform apply
```

## Download VSCode Insiders and VSCode Remote extension
https://code.visualstudio.com/insiders/


## Configure VSCode

## Connect to your instance

## To destroy your instance

Since Amazon charge us the minute, having an unattended or used instance could cost us a lot. So, in order to destroy the machine that you've just created you need to run this lines followed by 'yes':

```
terraform destroy
```
