terraform {
  backend "s3" {
    bucket  = "jcde-terraform-state-01"
    key     = "terraform/demo_project_module_hk/tfstate"
    region  = "ap-southeast-1"
  }
}