# aws_EC2_vscode
A simple EC2 instance ready to be connected via Visual Studio Code Insiders.

# Get VScode insiders
Download and follow the instructions of this site: https://code.visualstudio.com/insiders/

# Create your instance
Run the code in the box beneath:
```
terraform init
terraform apply
```

# Configure VScode

# Connect to your instance

# To destroy your instance

Since Amazon charge us the minute, having an unattended or used instance could cost us a lot. So, in order to destroy the machine that you've just created you need to run this lines followed by 'yes':

```
terraform destroy
```