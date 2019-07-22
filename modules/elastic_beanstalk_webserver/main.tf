resource "aws_elastic_beanstalk_environment" "beanstalk" {
  name                = "${terraform.workspace}-${var.env_name}"
  application         = "${var.application_name}"
  description         = "${var.env_description}"
  tier                = "WebServer"
  version_label       = "${var.version_label}"
  solution_stack_name = "${var.solution_stack}"
  tags                = "${var.tags}"
  setting             = ["${var.additional_environment_variables}"]

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "${var.asg_instance_type}"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "ImageId"
    value = "${var.ami_id}"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "${var.instance_profile}"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "SecurityGroups"
    value     = "${join(",", var.security_group)}"
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "ServiceRole"
    value     = "${var.service_role}"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "EC2KeyName"
    value     = "${var.key_pair}"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = "${lookup(var.asg_capacity, "max")}"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = "${lookup(var.asg_capacity, "min")}"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "Availability Zones"
    value     = "${var.asg_zones}"
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = "${var.vpc_id}"
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "LoadBalancerType"
    value     = "${var.load_balancer_type}"
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBSubnets"

    value = "${join(",", var.elb_subnets)}"
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = "${join(",", var.ec2_subnets)}"
  }

  setting {
    namespace = "aws:elb:loadbalancer"
    name      = "CrossZone"
    value     = "true"
  }

  setting {
    namespace = "aws:elasticbeanstalk:healthreporting:system"
    name      = "SystemType"
    value     = "enhanced"
  }

  setting {
    namespace = "aws:elasticbeanstalk:command"
    name      = "BatchSizeType"
    value     = "${var.batchtype}"
  }

  setting {
    namespace = "aws:elasticbeanstalk:command"
    name      = "BatchSize"
    value     = "${var.batchsize}"
  }

  setting {
    namespace = "aws:elasticbeanstalk:command"
    name      = "DeploymentPolicy"
    value     = "${var.deployment_policy}"
  }

	### env variables
setting {
	namespace = "aws:elasticbeanstalk:application:environment"
	name      = "${element(var.beanstalk_env_variable_keys, 1)}"
	value     = "${element(var.beanstalk_env_variable_values, 1)}"
}
setting {
	namespace = "aws:elasticbeanstalk:application:environment"
	name      = "${element(var.beanstalk_env_variable_keys, 2)}"
	value     = "${element(var.beanstalk_env_variable_values, 2)}"
}
setting {
	namespace = "aws:elasticbeanstalk:application:environment"
	name      = "${element(var.beanstalk_env_variable_keys, 3)}"
	value     = "${element(var.beanstalk_env_variable_values, 3)}"
}
setting {
	namespace = "aws:elasticbeanstalk:application:environment"
	name      = "${element(var.beanstalk_env_variable_keys, 4)}"
	value     = "${element(var.beanstalk_env_variable_values, 4)}"
}
setting {
	namespace = "aws:elasticbeanstalk:application:environment"
	name      = "${element(var.beanstalk_env_variable_keys, 5)}"
	value     = "${element(var.beanstalk_env_variable_values, 5)}"
}

}
