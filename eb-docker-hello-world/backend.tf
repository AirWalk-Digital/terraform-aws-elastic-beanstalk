terraform {
  backend "s3" {
    bucket = "358494172528-test-eb"
    key    = "terraform.tfstate"
    region = "eu-west-1"
    workspace_key_prefix = "statefiles"
  }
}
