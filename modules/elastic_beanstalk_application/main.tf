resource "aws_elastic_beanstalk_application" "application" {
  name        = "${var.application_name}"
  description = "${var.application_description}"

  appversion_lifecycle {
    service_role          = "${var.service_role}"
    max_count             = "${var.max_app_verions_count}"
    delete_source_from_s3 = "${var.delete_source_from_s3}"
  }
}
