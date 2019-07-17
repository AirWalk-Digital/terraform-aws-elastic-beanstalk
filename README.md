# Elastic Beanstalk

## Modules Covered

There are 3 modules that we can create:

- elastic_beanstalk_environment

- elastic_beanstalk_worker

- elastic_beanstalk_application


## Output Expected

| Name | Description |
| cname | endpoint of elasticbeanstalk |

## Attributes

Some of attributes including required and default are given below:

| Name | Description | Type | Mandatory | Default |
| :---: | ---------- | :---: | :------: | ------- |
| ecr_name | Name of ecr | string | no | "" |
| create_ecr | toggle switch to enable /disable ecr creation | boolean | no | 0 |
| env_name | Name of environment | map | yes |
| application_name | Name of application | map | yes |
| env_description | Environment description | string | no | "" |
| version_label | Application version name | map | yes |
| solution_stack | solution stack names mapped with env (platforms) | map | no | {
 php = "64bit Amazon Linux 2017.03 v2.5.0 running PHP 7.1"
 docker = "64bit Amazon Linux 2017.03 v2.7.4 running Docker 17.03.2-ce"
 multi-docker = "64bit Amazon Linux 2018.03 v2.11.0 running Multi-container Docker 18.03.1-ce (Generic)"
 javatomcat = "64bit Amazon Linux 2017.03 v2.6.5 running Tomcat 8 Java 8"
 nodejs = "64bit Amazon Linux 2017.03 v4.3.0 running Node.js"
 rubypassenger = "64bit Amazon Linux 2017.09 v2.6.0 running Ruby 2.4 (Passenger Standalone)"
 } |
| asg_instance_type | size of ec2 instance | map | yes |
| instance_profile | roles for ec2 | map | yes |
| security_groups | security group ids | map | yes |
| load_balancer_type | type of ELB (application/classic) | string | yes |
| beanstalk_env_variable_keys | nested map list to provide option parameters | map | nol | "" |

## Examples

detailed example present in example folders

## References

https://aws.amazon.com/documentation/elastic-beanstalk/
https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html