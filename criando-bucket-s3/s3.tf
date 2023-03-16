resource "aws_s3_bucket" "my-teste-bucket" {
  bucket = "my-bucket-uday1818"
  acl    = "private"

  tags = {
    Name       = "My bucket"
    Enviroment = "Dev"
    ManageBy   = "Terraform"
    Owner      = "Wesley Carvalho"
    UpdateAt   = "2023-01-18"
  }
}