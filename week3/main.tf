locals {
  env = replace(var.TFC_WORKSPACE_NAME, "t101-week3-", "")
}

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