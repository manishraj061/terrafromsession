resource "aws_s3_bucket" "mybucket" {
  provider = aws
  bucket = var.bucket_name
  acl    = "private"
}
