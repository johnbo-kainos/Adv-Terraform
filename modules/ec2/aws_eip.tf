resource "aws_eip" "eip" {
  count = var.public_ip_enabled ? var.instance_count : 0

  vpc = true
}

resource "aws_eip_association" "web_eip_association" {
  count = var.public_ip_enabled ? var.instance_count : 0

  instance_id   = aws_instance.ec2[count.index].id
  allocation_id = aws_eip.eip[count.index].id
}