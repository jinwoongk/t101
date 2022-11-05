# variable "TFC_WORKSPACE_NAME" {
#   type        = string
#   description = "Terraform Cloud Workspace 이름"
# }

variable "TF_ROLE_NAME" {
  type        = string
  description = "각 계정에 TF 프로비저닝을 하기 위한 IAM Role(dev 계정의 IAM 유저(TFCUser)를 통해 Assume)"
}

variable "account_id" {
  type        = string
  description = "Shared 계정의 Account ID"
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
variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "tstudydb"
}

variable "db_user" {
  description = "The username for the database"
  type        = string
}

variable "db_pass" {
  description = "The password for the database"
  type        = string
}