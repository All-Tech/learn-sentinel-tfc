variable "region" {
  description = "AWS region"
  default = "us-west-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default = "Provisioned by Terraform"
}

variable "oidc_token" {
  default = "https://login.microsoftonline.com/common/oauth2/v2.0/token"
}
variable "oidc_token_file_path" {
  default = "t2.micro"
}
variable "oidc_request_token" {
  default = "t2.micro"
}
variable "oidc_request_url" {
  default = "t2.micro"
}
variable "client_secret" {
  default = "mx58Q~WwXjtFs8IEcAQiEZ3tuZNBoVc3u2H0cduy" 
}