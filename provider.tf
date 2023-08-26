terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.0"
    }
  }
}



provider "aws" {
  region  = "us-east-1"
  #profile = "your_aws_cli_profile"
}


#export AWS_ACCESS_KEY_ID=your_access_key
#export AWS_SECRET_ACCESS_KEY=your_secret_key
