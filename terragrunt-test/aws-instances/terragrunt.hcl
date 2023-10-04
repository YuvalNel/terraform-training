remote_state {
  backend = "s3"
  config = {
    bucket         = "yuval-test-terragrunt-state-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1" # Change to your desired AWS region
    encrypt        = true
    encrypt        = true
    dynamodb_table = "your-lock-table" # Optional, for state locking
  }
}

dependencies {
  # Reference the path to the AWS AMI data configuration
  paths = ["../aws-ami-data"]
}
