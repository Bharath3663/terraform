resource "aws_ebs_volume" "snapshot" {
  availability_zone = "us-east-1a"
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id = aws_ebs_volume.snapshot.id

  tags = {
    Name = "HelloWorld_snap"
  }
}