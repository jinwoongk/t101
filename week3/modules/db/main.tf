terraform {
  required_providers {
    aws = {
      version = "~> 4.33.0"
    }
  }
  required_version = "~> 1.3.1"
}


module "network" {
  source   = "../network"
  nickname = var.nickname
}
resource "aws_db_subnet_group" "mydbsubnet" {
  name       = "mydbsubnetgroup"
  subnet_ids = [module.network.mysubnet3_id, module.network.mysubnet4_id]

  tags = {
    Name = "${var.nickname} DB subnet group"
  }
}

resource "aws_db_instance" "myrds" {
  identifier_prefix      = "t101"
  engine                 = "mysql"
  allocated_storage      = 10
  instance_class         = "db.t2.micro"
  db_subnet_group_name   = aws_db_subnet_group.mydbsubnet.name
  vpc_security_group_ids = [module.network.mysg2_id]
  skip_final_snapshot    = true

  db_name  = var.name
  username = var.username
  password = var.password
}
