variable "create_s3_bucket" {
  type        = bool
  default     = true
  description = "Set to `false` to not create the S3 bucket"
}

variable "bucket_name" {
  type        = string
  default     = ""
  description = "Name of the S3 bucket (e.g. `kops-state`)"
}

variable "force_destroy" {
  type        = bool
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without errors. These objects are not recoverable"
  default     = false
}

variable "tags" {
  default = {}
}
