# VPC
resource "aws_vpc" "NEW" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "NEW"
  }
}