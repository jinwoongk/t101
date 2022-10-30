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