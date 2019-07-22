variable "env_name" {

}

variable "application_name" {

}

variable "env_description" {
  default = ""
}

variable "version_label" {

}

variable "solution_stack" {
  default = ""
}

variable "asg_instance_type" {

}

variable "instance_profile" {

}

variable "security_group" {
  description = "SG IDs"
  type = "list"
}

variable "service_role" {

}

variable "batchtype" {
  type = "string"
}

variable "load_balancer_type" {
  type        = "string"
  description = "Application or Classic"
}

variable "batchsize" {
  type = "string"
}

variable "deployment_policy" {
  type = "string"
}

variable "key_pair" {

}

variable "asg_capacity" {
type = "map"
}

variable "asg_zones" {

}

variable "vpc_id" {

}

variable "elb_subnets" {
 default = []
}

variable "ec2_subnets" {
  description = "internal subnets"
  type = "list"
  default = []
}

variable "ami_id"{
  description = "ami id for instances"
  default     = ""
}

######### env variables

variable "beanstalk_env_variable_keys" {
  description = "list of env variables keys"
  type = "list"
}

variable "beanstalk_env_variable_values" {
  description = "list of env variables values"
  type = "list"
}

variable "additional_environment_variables" {
  type = "list"
description = <<DESCRIPTION

 default = [
      {
        namespace = "aws:elasticbeanstalk:application:environment"
        name      = "tag"
        value     = "testing"
      },
    ]
DESCRIPTION
default  = []
}

variable "tags"{
  default = {}
}

