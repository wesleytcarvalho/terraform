### Sempre que eu definir um main.tf seria meus provides que estou definindo

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}