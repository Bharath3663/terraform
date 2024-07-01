resource "aws_s3_bucket" "buck" {
  bucket = "my-tf-test-bucket3663"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}