resource "aws_s3_bucket" "bucket" {
  bucket = "nome-do-backuet-aqui"
  acl    = "private"

  tags = {
    Name       = "My bucket"
    Enviroment = "Dev"
    ManageBy   = "Terraform"
    Owner      = "Wesley"
    UpdateAt   = "2023-01-18"
  }
}
