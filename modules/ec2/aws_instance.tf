
resource "aws_instance" "web" {
  count         = var.instance_count

  ami           = var.instance_ami_id
  instance_type = var.instance_type
  subnet_id     = var.web_subnet_ids[count.index % length(var.web_subnet_ids)]

  user_data = var.user_data_file

  tags = {
    Name = "${local.naming_prefix}-webserver-${count.index}"
  }

  lifecycle {
    create_before_destroy = true
  }

}