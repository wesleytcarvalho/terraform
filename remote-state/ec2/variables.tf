### As definicões de variáveis fica aqui 

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "description"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform"
}

variable "aws_ami" {
  type        = string
  description = "Image ID"
  default     = "ami-02f3f602d23f1659d"
}

variable "aws_type" {
  type        = string
  description = "flavor"
  default     = "t2.micro"
}

