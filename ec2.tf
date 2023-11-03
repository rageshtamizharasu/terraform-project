locals {
  common_tags = {
    owner   = "devops"
    service = "backend"
  }
}
#----------------Don't Touch the Tags----------------------------------
/*
resource "aws_instance" "applications" {
  ami           = var.ami_ids["windows"] # Use the [Ubuntu]
  instance_type = "t2.micro"
  tags          = local.common_tags

}

resource "aws_instance" "ubuntumachine" {
  ami           = var.ami_ids["ubuntu"] # Use the [Ubuntu]
  instance_type = "t2.micro"
  tags          = local.common_tags
}
*/

resource "aws_instance" "app" {
  for_each      = toset(["dev", "test", "prod"])
  ami           = var.ami_ids["amazonlinux"]
  instance_type = "t2.micro"
  tags = {
    Name        = "instance-${each.key}"
    Environment = each.key
  }
}


