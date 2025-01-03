# tf versions
terraform {
  required_version = "~> 1.10.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.83.0"
    }
  }
}
