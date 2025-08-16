output "s3_bucket_name" {
  description = "Name of S3 bucket for Terraform state"
  value       = aws_s3_bucket.tf_state.bucket
}
