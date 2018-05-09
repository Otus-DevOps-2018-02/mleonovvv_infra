terraform {
  backend "gcs" {
    bucket = "appuniq111-bucket-test"
    prefix = "terraform/state/prod"
  }
}
