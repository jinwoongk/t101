terraform {
  required_providers {
    aws = {
      version = "~> 2.13.0"
    }
  }
  required_version = "~> 1.3.1"
}

# locals {
#   env = replace(var.TFC_WORKSPACE_NAME, "t101-week3-", "")
# }

provider "aws" {
  region = var.region
}

# resource "aws_instance" "example" {
#   ami           = "ami-0c76973fbe0ee100c"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "$(var.nickname)-t101-week3"
#   }
# }

module "network" {
  source   = "./modules/network"
  nickname = var.nickname
}

module "db" {
  source   = "./modules/db"
  name     = var.db_name
  username = var.db_user
  password = var.db_pass
}