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

variable "enviroment" {
  type        = string
  description = ""
}
