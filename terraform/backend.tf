terraform {
  backend "s3" {
    bucket         = "hamna-voting-app-terraform-state"
    key            = "voting-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "hamna-voting-app-terraform-locks"
    encrypt        = true
  }
}
