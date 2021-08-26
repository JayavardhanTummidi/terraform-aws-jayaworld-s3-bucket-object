variable "region" {
  type    = string
  default = "us-east-1"
}

variable "aws_kms_key_arn" {
   description = "The customer managed(CMK) to encrypt the bucket. Please create KMS Key if you haven't done already"
   type = string
   default = ""
}
variable "bucket_name" {
  description = "please provide bucket name"
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Defaults to private. Conflicts with grant"
  type = string
  default = "private"
}

variable "force_destroy" {
  description = "Whether to allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled."
  type = bool
  default = "false"
}

variable "key" {
   description = "Name of the object once it is in the bucket"
   type = string
}

variable "server_side_encryption" {
  description = "Server-side encryption of the object in S3. Valid values are AES256 and aws:kms"
  type = string
  default = null
}

variable "storage_class" {
  description = "Storage Class for the object. Can be either STANDARD, REDUCED_REDUNDANCY, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, or STANDARD_IA. Defaults to STANDARD"
  type = string
  default = "STANDARD"
}

variable "object_lock_legal_hold_status" {
  description = "Legal hold status that you want to apply to the specified object. Valid values are ON and OFF"
  type = string
  default = null
}

variable "object_lock_mode" {
  description = "Object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE"
  type = string
  default = null
}

variable "object_lock_retain_until_date" {
  description = "Date and time, in RFC3339 format, when this object's object lock will expire. example - 2021-12-31T23:59:60Z "
  type = string
  default = null
}

variable "source_file_name" {
  description = "Path to a file that will be read and uploaded as raw bytes for the object content."
  type = string
}

variable "tags" {
  description = "please provide tags for S3 bucket"
  type        = map(string)
  default     = {}
}

