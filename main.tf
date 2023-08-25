terraform {
        required_providers {
            aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
            }
        }

        backend "s3" {
            bucket = "cdac-proj-bucket"
 key    = "cdactfdemo"
 region = "us-east-1"
 profile = "avanti"
dynamodb_table =  "cdac-project-table"

        }
        
        }

        provider "aws" {
        profile    = var.profile
        region     = var.region
        }

        provider "aws" {
        profile    = var.profile
        region     = "us-east-1"
        alias = "us-east-1"
        }