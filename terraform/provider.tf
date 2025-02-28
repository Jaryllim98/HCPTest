terraform {
  cloud {
    organization = "Ollion_Trail"  # Replace with your Terraform Cloud Org Name

    workspaces {
      name = "HCPTest"  # Replace with your Terraform Cloud Workspace Name
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
