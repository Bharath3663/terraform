resource "aws_route_table" "root" {
  vpc_id = aws_vpc.NEW.id

  route = []

  tags = {
    Name = "root"
  }
}

resource "aws_route_table_association" "newrootas" {
  subnet_id      = aws_subnet.Public-1.id
  route_table_id = aws_route_table.root.id
}

resource "aws_route_table_association" "lastrootas" {
  gateway_id     = aws_internet_gateway.internet_gateway.id
  route_table_id = aws_route_table.root.id
}