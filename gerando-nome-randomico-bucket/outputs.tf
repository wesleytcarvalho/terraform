output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_object" {
  value = aws_s3_bucket.this.arn
}

output "bucket_domain" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "path_object" {
  value = "${aws_s3_bucket.this.id}/${aws_s3_object.this.key}"
}