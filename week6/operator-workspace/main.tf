variable "name" { default = "dynamic-aws-creds-operator" }
variable "region" { default = "ap-northeast-2" }
variable "path" { default = "../vault-admin-workspace/terraform.tfstate" }
variable "ttl" { default = "1" }

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

data "terraform_remote_state" "admin" {
  backend = "local"

  config = {
    path = var.path
  }
}

data "vault_aws_access_credentials" "creds" {
  backend = data.terraform_remote_state.admin.outputs.backend
  role    = data.terraform_remote_state.admin.outputs.role
}

provider "aws" {
  region     = var.region
  access_key = data.vault_aws_access_credentials.creds.access_key
  secret_key = data.vault_aws_access_credentials.creds.secret_key
}

data "aws_ami" "amazon2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-*-hvm-*-arm64-gp2"]
  }

  filter {
    name   = "architecture"
    values = ["arm64"]
  }

  owners = ["amazon"]
}

# Create AWS EC2 Instance
resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon2.id
  instance_type = "t4g.nano"

  tags = {
    Name  = var.name
    TTL   = var.ttl
    owner = "${var.name}-guide"
  }
}
