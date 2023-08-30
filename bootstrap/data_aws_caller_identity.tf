data "aws_caller_identity" "current" {}

data "aws_iam_session_context" "current_user_arn" {
  arn = data.aws_caller_identity.current.arn
}