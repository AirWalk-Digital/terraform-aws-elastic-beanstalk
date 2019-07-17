output "cname"
{
value = "${aws_elastic_beanstalk_environment.beanstalk.cname}"

}

output "name"
{
value = "${aws_elastic_beanstalk_environment.beanstalk.name}"
}

output "load_balancers" 
{
  value = "${aws_elastic_beanstalk_environment.beanstalk.load_balancers}"
}

