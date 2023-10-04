remote_state {
  backend = "s3"
  config = {
    bucket         = "yuval-test-terragrunt-state-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1" # Change to your desired AWS region
    encrypt        = true
    encrypt        = true
  }
}

# You can define variables here that are common to all child modules if needed.
