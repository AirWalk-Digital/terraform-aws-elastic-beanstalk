variable "service_role" {}
variable "security_group" {
  default = []
}
variable "key_pair" {}
variable "vpc_id" {}
variable "elb_subnets" {
  default = []
}
variable "ec2_subnets" {
  default = []
}
variable "bucket" {}