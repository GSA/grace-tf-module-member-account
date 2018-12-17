resource "aws_iam_policy" "grace_all_forceMfa_iam_policy" {
  provider = "aws.child"

  name        = "grace_all_forceMfa"
  path        = "/"
  description = "Forces iam users to set MFA to access services"
  policy      = "${file("${path.module}/iam_policy_files/grace_all_forceMfa_iam_policy.json")}"
}
