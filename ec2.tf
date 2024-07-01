resource "aws_instance" "main" {
  ami           = "ami-0d191299f2822b1fa"
  instance_type = "t2.micro"

  tags = {
    Name = "main"
  }
}