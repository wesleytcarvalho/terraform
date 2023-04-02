resource "aws_instance" "server" {
   /* se o valor de local.instance_number ? for menos ou igual a 0 
   eu coloco como zero : ou se ele for maior ele vai setar o valor que eu passar*/
    count = local.instance_number <= 0 ? 0 : local.instance_number

    ami = var.aws_ami
    instance_type = lookup(var.instance_type, var.env)

    tags = marge(
        local.commun_tags,
        {
            Project = "builtin-functions"
            Env = format("%s", var.env)
            Name = format("Instance %d", count.index + 1)
        }
    )
}