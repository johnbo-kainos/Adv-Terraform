
resource "aws_instance" "ec2" {
  count = var.instance_count

  ami           = var.instance_ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_ids[count.index % length(var.subnet_ids)]

  user_data = var.user_data_file

  tags = {
    Name = "${local.naming_prefix}-ec2-${count.index}"
    Role = "${var.instance_role}"
  }

  lifecycle {
    create_before_destroy = true
  }

}