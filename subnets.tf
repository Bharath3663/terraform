# public subnets
resource "aws_subnet" "Public-1" {
  vpc_id     = aws_vpc.NEW.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public-1"
  }
}

resource "aws_subnet" "Public-2" {
  vpc_id     = aws_vpc.NEW.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public-2"
  }
}

resource "aws_subnet" "Public-3" {
  vpc_id     = aws_vpc.NEW.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "Public-3"
  }
}

# private subnets
resource "aws_subnet" "Private-1" {
  vpc_id     = aws_vpc.NEW.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Private-1"
  }
}

resource "aws_subnet" "Private-2" {
  vpc_id     = aws_vpc.NEW.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Private-2"
  }
}

resource "aws_subnet" "Private-3" {
  vpc_id     = aws_vpc.NEW.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "Private-3"
  }
}