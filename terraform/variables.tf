variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name prefix used for tagging all resources"
  type        = string
  default     = "voting-app"
}
variable "key_pair_name" {
  description = "Name of an EXISTING AWS key pair"
  type        = string
}
variable "my_ip" {
  description = "Your own public IP, in CIDR form (e.g. 82.14.55.10/32)"
  type        = string
}