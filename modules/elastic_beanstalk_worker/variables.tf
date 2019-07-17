variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "env" {
  type = "string"
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
  type = "map"
  default = {
    php           = "64bit Amazon Linux 2017.03 v2.5.0 running PHP 7.1"
    docker        = "64bit Amazon Linux 2017.03 v2.7.4 running Docker 17.03.2-ce"
    multi-docker  = "64bit Amazon Linux 2018.03 v2.11.0 running Multi-container Docker 18.03.1-ce (Generic)"
    javatomcat    = "64bit Amazon Linux 2017.03 v2.6.5 running Tomcat 8 Java 8"
    nodejs        = "64bit Amazon Linux 2017.03 v4.3.0 running Node.js"
    rubypassenger = "64bit Amazon Linux 2017.09 v2.6.0 running Ruby 2.4 (Passenger Standalone)"
  }
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

variable "elb_scheme" {}

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
