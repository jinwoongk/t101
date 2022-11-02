variable "TFC_WORKSPACE_NAME" {
  type        = string
  description = "Terraform Cloud Workspace 이름"
}

variable "region" {
  type        = string
  default     = "ap-northeast-2"
  description = "default region"
}

variable "nickname" {
  type        = string
  default     = "jinwoong"
  description = "nick name"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "tstudydb"
}