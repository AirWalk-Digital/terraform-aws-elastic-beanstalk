variable "application_name" {
    description = "The name of the application, must be unique within your account"
    type = "string"
}

variable "application_description" {
    description = "Short description of the application"
    type = "string"
    default = ""
}

variable "service_role" {
    description = "The ARN of an IAM service role under which the application version is deleted. Elastic Beanstalk must have permission to assume this role"
    type = "string"
}

variable "max_app_verions_count" {
    description = "The maximum number of application versions to retain"
    type = "string"
    default = 10
}

variable "delete_source_from_s3" {
    description = "Set to true to delete a version's source bundle from S3 when the application version is deleted"
    type = "string"
    default = true
}