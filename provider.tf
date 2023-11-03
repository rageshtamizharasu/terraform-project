provider "aws" {
  region = var.aws_regions[5] # Mumbai region
}                             # AWS CLI Configure VSCODE




#---------------------DigitalOcean--------------------------
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.8.0"                       # Replace with the desired version
      token   = "your_digitalocean_api_token" #use CLI login best use case 

    }
  }
}
