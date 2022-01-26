variable "project" {
description = "Google Project ID."
type        = string
 }

variable "credentials_file" {
description = "SA keys"
default = "SA-Key.json"
type        = string
}

variable "region" {
default = "us-central1"
}

variable "zone" {
default = "us-central1-c"
}


variable "bucket_name" {
description = "GCS Bucket name. Value should be unique ."
type        = string
}