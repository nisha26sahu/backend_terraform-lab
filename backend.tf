terraform {
  backend "s3" {
    bucket = "talent-academy-nishasahu-lab-tfstates"
    key = "talent-academy/backend/terraform.tfstates"
    region = "eu-west-1"
  }
}