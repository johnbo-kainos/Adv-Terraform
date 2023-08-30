resource "aws_route_table_association" "public" {
  count = length(aws_subnet.public)

  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public[0].id

  depends_on = [aws_route_table.public]
}

# Associate correct route tables with subnets
resource "aws_route_table_association" "private_web" {
  count = length(aws_subnet.web)

  subnet_id      = aws_subnet.web[count.index].id
  route_table_id = element(aws_route_table.private.*.id, count.index)

  depends_on = [aws_route_table.private]
}

resource "aws_route_table_association" "private_rds" {
  count = length(aws_subnet.rds)

  subnet_id      = aws_subnet.rds[count.index].id
  route_table_id = element(aws_route_table.private.*.id, count.index)

  depends_on = [aws_route_table.private]
}