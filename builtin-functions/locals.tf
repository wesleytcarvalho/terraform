locals {
  instance_number = lookup(var.instance_number, var.env)

  file_ext = "zip"
  object_name = "tamplate"

  commun_tags = {
    "Owner" = "Wesley"
    "Year" = "2023"
  }
}