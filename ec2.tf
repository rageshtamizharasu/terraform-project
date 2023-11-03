locals {
  common_tags = {
    role    = "DevOps"
    service = "backend"
  }
}

#---------------------------------------------------------


resource "aws_instance" "terraforma" {
  ami = var.ami_ids["amazonlinux"]
  instance_type = "t2.micro"
  key_name = "terraform"

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("./terraform.pem")
    host = self.public_ip
  }
  
  provisioner "remote-exec" {
    inline = [ 
      "sudo yum update -y",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd"
     ]
  }
}
