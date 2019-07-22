module "webservice" {
  source                          = "../"
  env_name                         = "${var.env_name}"
  application_name                 = "${var.application_name}"
  version_label                    = "${var.version_label}"
  solution_stack                   = "${var.solution_stack}"
  asg_instance_type                = "${var.asg_instance_type}"
  instance_profile                 = "${var.instance_profile}"
  security_group                   = ["${var.security_group}"]
  service_role                     = "${var.service_role}"
  batchtype                        = "${var.batchtype}"
  batchsize                        = "${var.batchsize}"
  deployment_policy                = "${var.deployment_policy}"
  key_pair                         = "${var.key_pair}"
  asg_capacity                     = "${var.asg_capacity}"
  asg_zones                        = "${var.asg_zones}"
  vpc_id                           = "${var.vpc_id}"
  elb_subnets                      = ["${var.elb_subnets}"]
  ec2_subnets                      = ["${var.ec2_subnets}"]
  load_balancer_type               = "${var.load_balancer_type}"
  beanstalk_env_variable_keys      = "${var.beanstalk_env_variable_keys}"
  beanstalk_env_variable_values    = "${var.beanstalk_env_variable_values}"
  additional_environment_variables = ["${var.additional_environment_variables}"]
  ami_id                           = "${var.ami_id}"
  tags = {
      "Name" = "testing"
  }

}
