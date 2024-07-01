resource "aws_cloudwatch_metric_alarm" "cpu_utilization_alarm" {
  alarm_name          = "high-cpu-utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 120
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "This metric monitors ec2 cpu utilization"
  actions_enabled     = true

  dimensions = {
    InstanceId = "i-02c71e2106c9e0dac" # Replace with your EC2 instance ID
  }

  alarm_actions = [
    "arn:aws:sns:us-east-1:992382599785:aws-sns-topic" # Replace with your SNS topic ARN
  ]
  insufficient_data_actions = []
}
