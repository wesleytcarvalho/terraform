### Criando um bucket com nomes aleatórios usando o provider random_pet

resource "aws_s3_bucket" "this" {
    bucket = "${random_pet.bucket.id}-${var.enviroment}"
    tags = local.communs_tags
}