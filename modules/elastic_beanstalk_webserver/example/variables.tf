variable "env_name" {
  default = ""
}

variable "env" {}

variable "application_name" {
  default = ""
}

variable "version_label" {
  default = ""
}

variable "asg_instance_type" {
  default = ""
}

variable "instance_profile" {
  default = ""
}

variable "security_group" {
   default = []
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
  default = ""
}

variable "user_tags" {
  default = {}
  }

variable "key_pair" {
  default = ""
}

variable "asg_capacity" {
  default = {}
}

variable "asg_zones" {
  default = ""
}

variable "vpc_id" {
  default = ""
}

variable "elb_scheme" {
  default = ""
}

variable "elb_subnets" {
default =
    {}

}

variable "ec2_subnets" {
  default = []
}

variable "load_balancer_type" {
  default = ""
}

variable "ami_id"{
  default = ""
}

variable "beanstalk_env_variable_keys" {
  default = []
}

variable "beanstalk_env_variable_values" {
  default =  []
}

variable "additional_environment_variables" {
  default = []
  }
