resource "aws_s3_bucket" "my_public_bucket" {
  bucket = "my-unique-public-bucket-name"

  tags = {
    Name        = "My Public S3 Bucket"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_acl" "my_public_bucket_acl" {
  bucket = aws_s3_bucket.my_public_bucket.id
  acl    = "private"
}
