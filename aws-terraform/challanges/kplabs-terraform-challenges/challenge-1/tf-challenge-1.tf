# provider "aws" {
#  //version = "~> 2.54"
#  region = "us-east-1"
# #   access_key = "AKIAIOSFODNN7EXAMPLE"
# #   secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
# }

# provider "digitalocean" {}

# terraform {
#   required_version = "1.6.5"
# }


# resource "aws_eip" "kplabs_app_ip" {
#   vpc = true
# }

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
resource "aws_eip" "eip" {
  domain = "vpc"
}


