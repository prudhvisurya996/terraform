terraform {
  backend "s3" {

    bucket         = "bucket-name"
    key            = "backendstore/terraform.tfstate"
    region         = "us-west-1"
    encrypt        = true
  }
}

