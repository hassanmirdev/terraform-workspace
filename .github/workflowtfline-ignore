# .tflint.hcl

# Enable the AWS plugin to check for AWS-specific issues
plugin "aws" {
  enabled = true
  region  = "us-east-1"  # Set your AWS region here
}

# Enable and configure specific rules for AWS
rule "aws_instance_invalid_type" {
  enabled = true  # Checks for invalid instance types
}
