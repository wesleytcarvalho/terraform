variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "description"
}

variable "aws_profile" {
  type        = string
  description = "Perfil do usuario"
  default     = "terraform"
}

variable "enviroment" {
  type        = string
  description = "Ambiente para deploy"
}