variable "vpc_cidr" {
  description = "The CIDR block for the VPC holding jenkins"
  type        = string
  default     = "10.0.0.0/27"
}

variable "subnets" {
  description = "Number of Subnets for Jenkins availability"
  type        = number
  default     = 2
}

variable "master_ami" {
  description = "The AMI used for the Jenkins Master node"
  type        = string
  default     = "ami-0389b2a3c4948b1a0"
}

variable "master_instance_type" {
  description = "The instance type to use for the Jenkins Master node"
  type        = string
  default     = "t2.micro"
}

variable "agent_ami" {
  description = "The AMI used for a Jenkins Agent node"
  type        = string
  default     = "ami-0389b2a3c4948b1a0"
}

variable "agent_instance_type" {
  description = "The instance type to use for a Jenkins Agent node"
  type        = string
  default     = "t2.micro"
}
