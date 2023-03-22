resource "aws_s3_bucket" "bucket_tfstate" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
  tags   = local.commun_tags
  versioning {
    enabled = true
  }
}