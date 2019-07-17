variable "env_name" {
  default = ""
}

variable "application_name" {
  default = ""
}

variable "version_label" {
  default = ""
}

variable "instance_profile" {
  default = ""
}

variable "security_group" {
  default = ""
}

variable "service_role" {
  default = ""
}

variable "batchtype" {
  default = "Fixed"
}

variable "batchsize" {
  default = "1"
}

variable "deployment_policy" {
  default = "Rolling"
}

variable "user_tags" {
  type    = "map"
  default = {}
}

variable "subnets" {
  default = []
}

variable "key_pair" {
  default = ""
}

variable "asg_zones" {
  default = "Any 3"
}

variable "vpc_id" {
  default = ""
}

variable "beanstalk_env_variable_keys" {
  default = []
}

variable "beanstalk_env_variable_values" {
  default = []
}

variable "additional_environment_variables" {
  default =[]

}

variable "account_number" {}

variable "queue_name" {}
