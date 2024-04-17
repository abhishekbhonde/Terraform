terraform{
    required_providers {
        aws  = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
    
}

##  configure providers

provider "aws" {
    region = "us-west-2"
}