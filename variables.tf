variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnets" {
  description = "Public Subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private Subnets"
  type        = list(string)
}

variable "instance_type" {
  description = "Node Instance Type"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Name"
  type        = string
}