variable "env" {}

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

  validation {
    condition = length(var.aws_ami) > 4 && substr(var.aws_ami, 0, 4) == "ami-"
    error_message = "O ami dessa instancia não corresponde a \"ami-\"."
  }
}

variable "instance_number" {
    type = object({
        dev = number 
        prod = number
    })
    description = "Defenindo ambientes"
    default = {
      dev = 1
      prod = 3
    }
}

variable "instance_type" {
    type = object({
        dev = string
        prod = string
    })
    default = {
      dev = "t3.micro"
      prod = "t3.medium"
    }
}