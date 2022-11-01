output "address" {
  value       = module.db.myrds.address
  description = "Connect to the database at this endpoint"
}

output "port" {
  value       = module.db.myrds.port
  description = "The port the database is listening on"
}