terraform {
  backend "s3" {
    key = "terraform.tfstate"
    region = "ap-southeast-1"
    bucket = "remote-state"
    # endpoint = "http://minio-endpoint"
    # force_path_style = true
    # skip_credentials_validation = true
    # skip_metadata_api_check = true
    # skip_region_validation = true
  }
}