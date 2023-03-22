### Estado Remoto ou Remote state em ingles

Por padrão, o Terraform armazena o estado localmente em um arquivo chamado terraform.tfstate. Ao trabalhar com o Terraform em uma equipe, o uso de um arquivo local torna o Terraform uso complicado porque cada usuário deve se certificar de que eles sempre têm os mais recentes dados de estado antes de executar o Terraform e certifique-se de que ninguém mais seja executado Terraform ao mesmo tempo. Se preferir você também pode trabalhar fazer um locking no state quando alguém estiver usando ele bloqueia.  


### Antes de qualquer coisa voce precisa criar um bucket
passo01 - executar o terraform do diretório s3

passo02 - executar o terraform do ec2 para criar a máquina e o state

passo03 - agora observe se criou o terraform.tfstate no bucket
