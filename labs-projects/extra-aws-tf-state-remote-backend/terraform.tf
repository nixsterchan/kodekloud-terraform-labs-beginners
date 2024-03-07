terraform {
    backend "s3" {
        bucket = "mock-bucket-1"
        key = "someprefix/terraform.tfstate"
        region = "ap-southeast-1"
        dynamodb_table = "statelocker-table"
    }
}