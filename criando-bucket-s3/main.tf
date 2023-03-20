### Não é uma boa prática utlizar o access_key nem secret_key colocando abertamente aqui
### Sempre utlize profile para definir seus perfil de conta 

provider "aws" {
  region  = "us-east-2"
  profile = "terraform"
}
