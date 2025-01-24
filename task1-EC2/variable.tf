variable "aws-ami-id" {
  description = " ami for instance"
  type        = string
  default     = ""
}
variable "aws-instancetype" {
  description = "instancetype"
  type        = string
  default     = "t2.micro"
}
variable "aws-AZ" {
  description = " AZ"
  type        = string
  default     = "us-west-1b"
}

