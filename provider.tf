provider "aws" {
  region = var.aws_regions[5] # Mumbai region
}                             # AWS CLI Configure VSCODE




#---------------------DigitalOcean--------------------------
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.8.0" # Replace with the desired version
    }
  }
}
