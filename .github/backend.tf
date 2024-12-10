terraform {
  backend "s3" {
    bucket         = "prabhu-terraform"         # Your S3 bucket name
    key            = "state-file/terraform.tfstate" # Path within the bucket
    region         = "us-east-1"                # S3 bucket region
    encrypt        = false                       # Encrypt the state file
#    dynamodb_table = "terraform-state-lock"     # DynamoDB table for state locking (optional)
  }
}
