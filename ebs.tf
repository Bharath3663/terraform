resource "aws_ebs_volume" "ebs" {
  availability_zone = "us-east-1a" # Replace with your availability zone
  size              = 10 # The size of the volume in GiBs

  tags = {
    Name = "MyEBSVolume"
  }
}