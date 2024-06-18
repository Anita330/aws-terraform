resource "aws_instance" "example" {
  for_each = var.instance_config
  ami = each.value.ami
  instance_type = each.value.instance_type
}