## Declarei alguns outputs no meu código, eles são feito para mostrar algo na tela
## Os outputs são muito utlizados em modulos

output "nome_bucket" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "domin" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "path_name" {
  value = "${aws_s3_bucket.this.bucket}/${aws_s3_object.this.key}"
}