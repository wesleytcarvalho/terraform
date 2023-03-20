### Criando um bucket com nomes aleatórios usando o provider random_pet
resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.enviroment}"
  tags   = local.communs_tags
}

# Criando um objeto dentro do bucket e importando o arquivo.txt
resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "import/${local.file_path}"
  source = local.file_path
  etag   = filemd5(local.file_path)
}