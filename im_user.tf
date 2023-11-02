
/*
resource "aws_iam_user" "lb" {
  name = "iamuser. ${count.index}"  # 3 users 
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn 
}
*/


























