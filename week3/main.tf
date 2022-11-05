terraform {
  required_providers {
    aws = {
      version = "~> 4.33.0"
    }
  }
  required_version = "~> 1.3.1"
}

# locals {
#   env = replace(var.TFC_WORKSPACE_NAME, "t101-week3-", "")
# }

provider "aws" {
  region = var.region
  assume_role {
    role_arn = join("", ["arn:aws:iam::", var.account_id, ":role/", var.TF_ROLE_NAME])
  }
}

module "network" {
  source   = "./modules/network"
  nickname = var.nickname
}

module "db" {
  source   = "./modules/db"
  name     = var.db_name
  username = var.db_user
  password = var.db_pass
  nickname = var.nickname
}