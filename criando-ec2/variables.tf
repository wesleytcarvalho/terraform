variable "enviroment" {
  type        = string
  description = "Ambiente dev hom e prod"
}

variable "aws_region" {
  type        = string
  description = "Regioes onde vai ser feito o deploy"
}

variable "aws_profile" {
  type        = string
  description = "Perfil para acessar aws"
}

variable "aws_ami" {
  type        = string
  description = " Image aws"
}

variable "aws_instance_type" {
  type        = string
  description = "Tipo de instancia"
}

variable "aws_tags" {
  type        = map(string)
  description = "Tags dos recursos"
  default = {
    Name       = "Ubuntu"
    Enviroment = "Dev"
    ManageBy   = "Terraform"
    Owner      = "Wesley Carvalho"
    UpdateAt   = "2023-01-18"
  }
}