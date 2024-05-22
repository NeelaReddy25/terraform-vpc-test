terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.48.0"
        }
    }
    backend "s3" {
        bucket = "neelareddy-remote-state"
        key = "expense-vpc"
        region = "us-east-1"
        dynamodb_table = "neelareddy-locking"
    }
}

#provide autentication here
provider "aws" {
    region = "us-east-1"
}
