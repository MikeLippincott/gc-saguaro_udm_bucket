# tf backend setup enabling state management bucket
terraform {
  backend "gcs" {
    bucket = "gc-saguaro_udm_bucket-state-mgmt"
    prefix = "terraform/state"
  }
}
