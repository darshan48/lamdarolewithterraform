resource "aws_iam_role_policy" "lambda-policy" {
  name = "test_policy"
  role = aws_iam_role.lambda_role.id

  policy = "${file("iam/lamdapolicy.json")}"
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = "${file("iam/lambda-assume-policy.json")}"
}