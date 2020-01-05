# aws_EC2_vscode
A simple EC2 instance ready to be connected via Visual Studio Code Insiders.

# Get VScode insiders
Download and follow the instructions of this site: https://code.visualstudio.com/insiders/

# Create your ssh_key
First create you ssh key to create an aws keypair later.
```
mkdir ssh_keys && ssh-keygen -f ./ssh_keys/mykey
```

# Create your instance
Run the code in the box beneath:
```
terraform init
terraform apply
```

# Configure VScode

# Connect to your instance

