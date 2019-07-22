module "worker"{
 source = "../"
  application_name = "${var.application_name}"
  environment_name = "${var.env_name}"
  solution_stack = "${var.solution_stack}"
  application_version = "${var.version_label}"
  asg_max = "1"
  asg_min = "1"
  asg_instance_type = "t2.micro"
  elb_scheme = "internal"
  queue_name = "${terraform.workspace}-${var.queue_name}"
  account_number = "${var.account_number}"
  http_path = "/"
  beanstalk_env_variable_keys="${var.beanstalk_env_variable_keys}"
  beanstalk_env_variable_values="${var.beanstalk_env_variable_values}"
  user_tags = {
      "Name" = "testing"
  } 
 ####Common Infrastructure####

  security_group = "${var.security_group}"
  key_pair = "${var.key_pair}"
  instance_profile = "${var.instance_profile}"
  service_role = "${var.service_role}"
  vpc_id = "${var.vpc_id}"
  subnets = ["${var.subnets}"]
  elb_pub_subnet = [""]
  asg_zones = "${var.asg_zones}"
  deployment_policy = "${var.deployment_policy}"
  batchsize = "${var.batchsize}"
  batchtype = "${var.batchtype}"

  additional_environment_variables = "${var.additional_environment_variables}"
}
