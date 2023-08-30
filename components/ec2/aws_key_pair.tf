resource "tls_private_key" "keygen" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "${local.naming_prefix}-ec2-public-key"
  public_key = tls_private_key.keygen.public_key_openssh
}

resource "local_file" "ssh_private_key" {
  content         = tls_private_key.keygen.private_key_pem
  filename        = pathexpand("~/.ssh/${local.naming_prefix}-ec2-key.pem")
  file_permission = "0400"
}

resource "local_file" "ssh_public_key" {
  content         = tls_private_key.keygen.public_key_pem
  filename        = pathexpand("~/.ssh/${local.naming_prefix}-ec2-key.pub.pem")
  file_permission = "0400"
}