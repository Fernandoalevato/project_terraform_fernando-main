variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = ""
}

variable "aws_profile" {
  type        = string
  default     = "default"
  description = ""
}

variable "instance_ami" {
  type        = string
  default     = "ami-083654bd07b5da81d"
  description = ""
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "GFT_test"
  }
}