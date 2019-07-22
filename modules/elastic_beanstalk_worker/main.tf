### module for worker
resource "aws_elastic_beanstalk_environment" "beanstalk-worker" {
  name                = "${terraform.workspace}-${var.environment_name}"
  application         = "${var.application_name}"
  solution_stack_name = "${var.solution_stack}"
  version_label       = "${var.application_version}"
  tier                = "Worker"
  tags                = "${var.user_tags}"
  setting             = ["${var.additional_environment_variables}"]

  #### environment option setting
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "${var.asg_instance_type}"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "${var.instance_profile}"
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "ServiceRole"
    value     = "${var.service_role}"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "SecurityGroups"
    value     = "${var.security_group}"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "EC2KeyName"
    value     = "${var.key_pair}"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = "${var.asg_max}"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = "${var.asg_min}"
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
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = "${join(",", var.subnets)}"
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

  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBSubnets"
    value     = "${join(",", var.elb_pub_subnet)}"
  }

  setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "WorkerQueueURL"
    value = "https://sqs.eu-west-1.amazonaws.com/${var.account_number}/${var.queue_name}"  
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name = "EnvironmentType"
    value = "LoadBalanced"
  }
  setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "HttpPath"
    value = "${var.http_path}"
  }
    setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "HttpConnections"
    value = "10"
  }
    setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "VisibilityTimeout"
    value = "300"
  }
    setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "MimeType"
    value = "application/json"
  }
    setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "ConnectTimeout"
    value = "5"
  }
   setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "ErrorVisibilityTimeout"
    value = "2"
  }
   setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "InactivityTimeout"
    value = "299"
  }
  setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "MaxRetries"
    value = "10"
  }
  setting {
    namespace = "aws:elasticbeanstalk:sqsd"
    name = "RetentionPeriod"
    value = "345600"
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
