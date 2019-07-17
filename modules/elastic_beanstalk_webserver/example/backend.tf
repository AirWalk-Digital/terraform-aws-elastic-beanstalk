terraform {
  backend "s3" {
    bucket = ""
    key    = "terraform.tfstate"
    region = "eu-west-1"
    workspace_key_prefix = "statefiles"
  }
}
