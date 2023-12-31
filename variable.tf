variable "aws_regions" {
  description = "A list of AWS regions"
  type        = list(string)
  default     = ["us-east-1", "us-west-2", "eu-west-1", "ap-southeast-2", "sa-east-1", "ap-south-1"]
}


variable "ec2name" {
  type    = list(any)
  default = ["dev", "Test", "prod"]
}

variable "ami_ids" {
  type = map(string)
  default = {
    ubuntu      = "ami-0a7cf821b91bcccbc" # Official Ubuntu 18.04 AMI
    windows     = "ami-0fb974a4772b174a5" # Official Windows Server 2019 AMI
    amazonlinux = "ami-06006e8b065b5bd46" # Official Amazon Linux 2 AMI
    self        = "ami"                   # Self AMI Production Server
    # Add more OS options and AMI IDs
  }
}


