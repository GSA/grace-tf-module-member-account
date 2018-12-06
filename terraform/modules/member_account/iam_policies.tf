resource "aws_iam_policy" "GRACE_tenant_Admins_Policy" {
  provider = "aws.child"

  name        = "GRACE_tenant_Admins_Policy"
  path        = "/"
  description = "GRACE_tenant_Admins_Policy"
  policy      = "${file("${path.module}/iam_policy_files/admin_policy.json")}"
}
