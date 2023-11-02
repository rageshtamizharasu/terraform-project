resource "aws_instance" "applications" {
  ami           = var.ami_ids["windows"] # Use the [Ubuntu]
  instance_type = "t2.micro"
  tags = {
    name = "my application"
  }
}

resource "aws_instance" "ubuntumachine" {
  ami           = var.ami_ids["ubuntu"] # Use the [Ubuntu]
  instance_type = "t2.micro"
  tags = {
    name = "my application ubuntu"
  }
}

