terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

provider "aws" {
  region                      = lookup(var.region, terraform.workspace)
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  s3_use_path_style = true
  endpoints {
    ec2 = "http://mock-localstack-endpoint"
    dynamodb = "http://mock-localstack-endpoint"
    s3 = "http://mock-localstack-endpoint"
  }
}
