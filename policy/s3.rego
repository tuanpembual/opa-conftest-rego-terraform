package main

deny_s3[msg] {
  some i
  input.resource_changes[i].type == "aws_s3_bucket_acl"
  input.resource_changes[i].change.after.acl == "public-read"
  msg = sprintf("Bucket S3 '%s' tidak boleh bersifat publik.", [input.resource_changes[i].address])
}

deny_s3[msg] {
  some i
  input.resource_changes[i].type == "aws_s3_bucket_acl"
  input.resource_changes[i].change.after.acl == "public-read-write"
  msg = sprintf("Bucket S3 '%s' tidak boleh bersifat publik.", [input.resource_changes[i].address])
}
