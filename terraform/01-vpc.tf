resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  # Must be enabled for EFS
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-eks-karpenter"
  }
}
