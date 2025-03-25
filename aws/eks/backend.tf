terraform {
  backend "s3" {
    bucket         = "tf-state-cloud-infra"
    key            = "eks/general"
    region         = "us-east-2"
    profile        = "personal"
    dynamodb_table = "tf-locks-personal"
    encrypt        = true
  }
}