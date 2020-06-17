# cloud-platform-terraform-kops-state-backend

Terraform module to bootstrap S3 buckets to save the kOps state

## Usage

```hcl
module "kops_state_backend" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-kops-state-backend?ref=0.0.1"

  bucket_name = "${var.aws_account_name}-kops-state"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket_name | The bucket name which is going to be created | string | `` | yes |
| region | The region where the bucket is going to be created | string | `eu-west-2` | no |
| create_s3_bucket | Create or not the bucket (used as conditional for module) | bool | `true` | no |
| force_destroy | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without errors | bool | `false` | no |
| tags | tags to apply to the bucket | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket_name | The name of the bucket created |
