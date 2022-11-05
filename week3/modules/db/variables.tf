variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
}

variable "name" {
  description = "The name to use for the database"
  type        = string
  default     = "tstudydb"
}

variable "nickname" {
  description = "The name to use for the user nickname"
  type        = string
}
