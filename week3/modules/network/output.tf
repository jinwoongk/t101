output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "mysubnet3_id" {
  value = aws_subnet.mysubnet3.id
}

output "mysubnet4_id" {
  value = aws_subnet.mysubnet4.id
}

output "mysg2_id" {
  value = aws_security_group.mysg2.id
}