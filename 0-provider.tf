terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.44.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA272QEKE2ABQASKVF"
  secret_key = "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"
}
