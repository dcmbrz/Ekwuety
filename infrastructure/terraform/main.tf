# Ekwuety Infrastructure - Terraform Configuration
# Cloud resources for OpenSearch, Qdrant, and supporting services

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Placeholder for infrastructure configuration
# Add modules for: VPC, ECS/EKS, Typesense, Qdrant, CDN