terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "aws-tfc"

    workspaces {
      prefix = "t101-week3-"
    }
  }
}
