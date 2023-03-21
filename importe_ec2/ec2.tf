resource "aws_instance" "ec2_importado" {
  ami           = var.aws_ami
  instance_type = var.aws_type
  tags          = local.commun_tags
}