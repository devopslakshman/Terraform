variable "environment" {
    default = "Dev"
  
}
variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "Red Hat Enterprise Linux 9"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(string)

  default = {
    Name        = "demo-1"
    Project     = "Roboshop"
    terraform   = "true"
    Environment = "Test"
  }
}
