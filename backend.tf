# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "yetty-myterraformproject"
    key            = "nest/terraform.tfstate"
    region         = "us-east-1"
    profile        = "yetunde"
    dynamodb_table = "yettyinit"
  }
}
