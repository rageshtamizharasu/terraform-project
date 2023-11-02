data "aws_ami" "appname" {
  most_recent = true       #recent value of terraform ami id
  owners      = ["amazon"] #amazon, ubuntu , self


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*"]
    #values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server"]

  }
}