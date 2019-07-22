module "beanstalk_application" {
    source = "../"
    application_name = "sample_application"
    application_description = "A short description for sample application"
    service_role = "${var.service_role}"
    max_app_verions_count = 10
    delete_source_from_s3 = true
}