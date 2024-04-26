provider "aws" {
  region = var.region
}

terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.13.1"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.16.1"
    }
  }
}


