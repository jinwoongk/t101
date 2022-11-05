terraform {
  required_providers {
    aws = {
      version = "~> 4.33.0"
    }
  }
  required_version = "~> 1.3.1"
}

resource "aws_vpc" "myvpc" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.nickname}-t1011-study"
  }
}

resource "aws_subnet" "mysubnet3" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.10.3.0/24"

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "t101-subnet3"
  }
}

resource "aws_subnet" "mysubnet4" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.10.4.0/24"

  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "t101-subnet4"
  }
}

resource "aws_route_table" "myrt2" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "t101-rt2"
  }
}

resource "aws_route_table_association" "myrtassociation3" {
  subnet_id      = aws_subnet.mysubnet3.id
  route_table_id = aws_route_table.myrt2.id
}

resource "aws_route_table_association" "myrtassociation4" {
  subnet_id      = aws_subnet.mysubnet4.id
  route_table_id = aws_route_table.myrt2.id
}

resource "aws_security_group" "mysg2" {
  vpc_id      = aws_vpc.myvpc.id
  name        = "T101 SG - RDS"
  description = "T101 Study SG - RDS"
}

resource "aws_security_group_rule" "rdssginbound" {
  type              = "ingress"
  from_port         = 0
  to_port           = 3389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.mysg2.id
}

resource "aws_security_group_rule" "rdssgoutbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.mysg2.id
}
