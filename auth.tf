resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "deployer" {
  key_name   = "my-terraform-key"
  public_key = tls_private_key.my_key.public_key_openssh
}

resource "local_file" "ssh_key" {
  filename        = "${path.module}/my-terraform-key.pem"
  content         = tls_private_key.my_key.private_key_pem
  file_permission = "0400"
}