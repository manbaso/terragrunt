variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  type        = string
  default     = "us-east-1"
}

variable "security_group_ports" {
  description = "Ports for build security group"
  type        = list(number)
  default     = []
}



variable "security_groups_name" {
  description = "Ports for database security group"
  type        = string
  default     = ""
}



variable "instance_types" {
  description = "List of instance types"
  type        = list(string)
  default     = []
}

variable "private_ip" {
  description = "List of instance types"
  type        = list(string)
  default     = []
}

variable "ami" {
  description = "Ports for build security group"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "Ports for build security group"
  type        = string
  default     = ""
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = ""
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Define the CIDR blocks for the subnets
variable "subnet_cidr_blocks" {
  type = list(string)
  default = []
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = ""
}

variable "security_group_name" {
  description = "security group name"
  type        = string
  default     = ""
}

variable "security_group_description" {
  description = "security group name"
  type        = string
  default     = "security group"
}

variable "instance_tag" {
  description = "security group name"
  type        = string
  default     = "dev"
}

variable "instance_count" {
  description = "number of instances"
  type        = number
  default     = 0
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
}

variable "private_subnet" {
  description = "Specifies whether the instances should be launched in a public or private subnet."
  type        = string
  default     = "public"
  validation {
    condition     = var.private_subnet == "public" || var.private_subnet == "private"
    error_message = "private_subnet must be either 'public' or 'private'."
  }
}

variable "internet_gateway_id" {
  description = "Internet Gateway ID"
  type        = string
  
}



