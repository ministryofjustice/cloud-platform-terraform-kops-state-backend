
output "bucket_name" {
  value = module.kops_main.this_s3_bucket_id
}

output "bucket_name_replica" {
  value = module.kops_replica.this_s3_bucket_id
}
