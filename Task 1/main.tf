resource "aws_instance" "my_test" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = false

  root_block_device {
    volume_size = 12
  }
}
