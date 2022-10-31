output "address" {
  value       = module.db.aws_db_instance.myrds.address
  description = "Connect to the database at this endpoint"
}

output "port" {
  value       = module.db.aws_db_instance.myrds.port
  description = "The port the database is listening on"
}

output "vpcid" {
  value       = module.network.aws_vpc.myvpc.id
  description = "My VPC Id"
}
