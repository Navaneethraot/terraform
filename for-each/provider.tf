terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }



  backend "s3" {
    bucket = "navaneeth-remote-state"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "navaneeth-locking"
  }
}

provider "aws" {
    region= "us-east-1"
  # Configuration options
}
