variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "account_number" {}

#### Bucket name
variable "queue_name" {}
variable "http_path" {}

### EB application name
variable "environment_name" {}
variable "application_name" {}
variable "application_description" {
  default = ""
}
variable "application_version" {}

## EB solution_stack

variable "solution_stack" {
  default = ""
}

### EB option settings

variable "asg_instance_type" {}

variable "instance_profile" {}

variable "service_role" {}

variable "security_group" {}

variable "key_pair" {}

variable "asg_max" {}

variable "asg_min" {}

variable "vpc_id" {}

### private subnets
variable "subnets" {
  type = "list"
}

variable "batchtype" {
  default = ""
}

variable "batchsize" {
  default = ""
}

variable "deployment_policy" {}

variable "asg_zones" {
  default = ""
}

variable "elb_pub_subnet" {
  type = "list"
}

### mandatory tags
variable "user_tags" {
  default = {}
}

variable "beanstalk_env_variable_keys" {
  description = "list of env variables keys"
  type        = "list"
}

variable "beanstalk_env_variable_values" {
  description = "list of env variables values"
  type        = "list"
}

variable "additional_environment_variables" {
  type = "list"
}
