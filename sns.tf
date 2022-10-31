resource "aws_sns_topic" "patching_alerts" {
  name = "patching_alerts"
}

resource "aws_sns_topic_subscription" "patching_alerts" {
  topic_arn = aws_sns_topic.patching_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email
}