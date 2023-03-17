resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.enviroment}"
  tags   = local.communs_tags
}

# Criando objetos no bucket aws_s3_bucket.this
resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "config/${local.json_path}"
  source = local.json_path
  etag   = filemd5(local.json_path)
}