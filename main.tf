provider "aws" {
  region = var.region
}
# Create a new bucket object
resource "aws_s3_bucket_object" "jayaworld-s3-bucket-object" {
  key = var.key
  bucket = var.bucket_name
  source = null
  kms_key_id = var.aws_kms_key_arn
  acl = var.acl
  force_destroy = var.force_destroy
  server_side_encryption = var.server_side_encryption
  storage_class = var.storage_class
  object_lock_legal_hold_status = var.object_lock_legal_hold_status
  object_lock_mode = var.object_lock_mode
  object_lock_retain_until_date = var.object_lock_retain_until_date
  tags = merge(var.tags)
}
