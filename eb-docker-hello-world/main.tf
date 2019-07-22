module "webservice" {
  source                          = "../modules/elastic_beanstalk_webserver"
  env_name                         = "sample-docker-test"
  application_name                 = "sample_application"
  version_label                    = "${aws_elastic_beanstalk_application_version.default.name}"
  solution_stack                   = "64bit Amazon Linux 2018.03 v2.12.14 running Docker 18.06.1-ce"
  asg_instance_type                = "t2.micro"
  instance_profile                 = "${var.service_role}"
  security_group                   = ["${var.security_group}"]
  service_role                     = "${var.service_role}"
  batchtype                        = "Fixed"
  batchsize                        = "1"
  deployment_policy                = "AllAtOnce"
  key_pair                         = "${var.key_pair}"
  asg_capacity                     = {min = "1", max = "1"}
  asg_zones                        = "Any 3"
  vpc_id                           = "${var.vpc_id}"
  elb_subnets                      = ["${var.elb_subnets}"]
  ec2_subnets                      = ["${var.ec2_subnets}"]
  load_balancer_type               = "classic"
  beanstalk_env_variable_keys      = ["JDBC_CONNECTION_STRING"]
  beanstalk_env_variable_values    = [""]
  ami_id                           = "ami-030c69e456884a79e"
  tags = {
      "Name" = "testing"
  }

}


resource "aws_s3_bucket_object" "default" {
  bucket = "${var.bucket}"
  key    = "beanstalk/docker-singlecontainer-v1.zip"
  source = "docker-singlecontainer-v1.zip"
}

resource "aws_elastic_beanstalk_application_version" "default" {
  name        = "tf-test-version-label"
  application = "sample_application"
  description = "application version created by terraform"
  bucket      = "${var.bucket}"
  key         = "${aws_s3_bucket_object.default.key}"
}