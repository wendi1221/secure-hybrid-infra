variable "project_name" {
  type    = string
  default = "secure-hybrid"
}

variable "environment" {
  type    = string
  default = "local"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  type    = string
  default = "local-key"
}
variable "public_key_content" {
  type        = string
  description = "Content of the public SSH key"
  default     = null
}