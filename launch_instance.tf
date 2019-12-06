resource "aws_instance" "myec2server" {
  provider      = aws
  ami           = var.amis[var.region]
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  private_ip = var.private_ip
  key_name = var.key_name
  tags = merge(local.common_tags , {"Name" = var.name})
}
