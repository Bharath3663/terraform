resource "aws_sns_topic" "aws" {
  name = "aws-sns-topic"
  kms_master_key_id = "alias/aws/sns"
}

resource "aws_sns_topic" "user_updates" {
  name                        = "aws-updates-topic.fifo"
  fifo_topic                  = true
  content_based_deduplication = true
}