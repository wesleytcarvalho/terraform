### O "random_pet" cria nomes aleatórios para meus buckets

resource "random_pet" "bucket" {
  length = 5
}