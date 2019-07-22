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
| env_name | Name of environment | map | yes |
| application_name | Name of application | map | yes |
| env_description | Environment description | string | no | "" |
| version_label | Application version name | map | yes |
| solution_stack | solution stack names mapped with env (platforms) | map | no |
| asg_instance_type | size of ec2 instance | map | yes |
| instance_profile | roles for ec2 | map | yes |
| security_groups | security group ids | map | yes |
| load_balancer_type | type of ELB (application/classic) | string | yes |
| beanstalk_env_variable_keys | nested map list to provide option parameters | map | nol | "" |


To Deploy beanstalk Web server or Worker, use following commands:
```bash
terraform init
terraform workspace new qa #in case of prod, replace qa with prod
terraform workspace select qa
terraform plan --var-file qa.tfvars --out ./build.plan
terraform apply ./build.plan

rm ./build.plan
```

## Examples

detailed example present in example folders of every module

## References

https://aws.amazon.com/documentation/elastic-beanstalk/
https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html