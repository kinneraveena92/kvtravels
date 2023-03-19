terraform {
  backend "s3" {
    bucket         = "kv-3tier-terraform-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "kv-3tier-terraform-backend"
  }
}