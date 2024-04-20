terraform {
  backend "s3" {
    bucket = "hskglobaltech.shop"
    key    = "jenkins/eks.tfstate"
    region = "us-east-1"
  }
}