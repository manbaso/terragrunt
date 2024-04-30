variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  type        = string
  default     = "us-east-1"
}



variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = ""
}

