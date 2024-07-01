resource "aws_ami" "example" {
  name                = "terraform-example"
  root_device_name    = "/dev/xvda"
  imds_support        = "v2.0" 
   ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-054e39c169e8d7126"
    volume_size = 10
  }
}