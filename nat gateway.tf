resource "aws_eip" "nat_eip" {
  vpc = true # Set to true if the EIP is in a VPC

  tags = {
    Name = "nat_eip"
  }
}

resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.Private-1.id  

  tags = {
    Name = "example-nat-gw"
  }
}