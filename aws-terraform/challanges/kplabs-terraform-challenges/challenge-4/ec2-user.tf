# resource "aws_iam_user" "lb" {
#   name = "loadbalancer"
#   path = "/system/"

#   tags = {
#     tag-key = "tag-value"
#   }
# }
# 

data "aws_iam_users" "users" {}

output "aws_iam_user" {
  value = data.aws_iam_users.users.names
}

locals {
  user_count = length(data.aws_iam_users.users.names)
}
output "user_count" {
  value = local.user_count
}