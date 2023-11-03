locals {
  common_tags = {
    role    = "DevOps"
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
  for_each      = toset(["Development", "Test", "Production"]) #  3 Names 
  ami           = var.ami_ids["amazonlinux"]                   #   Using amazon linux
  instance_type = "t2.micro"
  tags = {
    Name        = "instance-${each.key}" # for each key toset itwill Create instance
    Environment = each.key
  }
}


