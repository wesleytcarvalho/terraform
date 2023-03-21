#### Importar recursos da aws que foi criado manuel para automatizado com terraform

#### Para fazer este importe você precisa ter duas coisas importantes
#### - o seu profile ou secret-key e access-key
#### - e também a região onde você quer rodar, veja que nos exemplos eu uso variáveis, mas você pode usar o que quiser

### Agora imagine um senário.
#### - Eu criei uma máquina ec2  manual e quero deixar automatizada com terraform
#### - Já tenho meus arquivos de principais para acessar o provider, agora é só rodar o seguinte comando
```
terraform import aws_instance.maquina-ec2 i-0b5713abba732603f
```
#### observe eu pego o recurso e o nome da maquina que criei depois eu pego o Instance ID e rodo
#### ele vai dar a seguinte sugestão
```
resource "aws_instance" "maquina-ec2" {
  # (resource arguments)
}
```
#### Agora só preencher os dados, ficnado assim
```
resource "aws_instance" "maquina-ec2" {
     ami = ami-02f3f602d23f1659d
     instance_type = "t2.micro"
}
```
#### Agora execute o seguinte comando
```
terraform import aws_instance.maquina-ec2 i-0b5713abba732603f
```
### NOTA: observe que eu pego o ID da instancia e o nome que coloquei no recurso
#### Agora você pode fazer seus teste, modificado e deixando no padrão, como por exemplo colocar em variáveis e tags
