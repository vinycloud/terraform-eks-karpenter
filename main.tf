module "eks-karpenter" {
  source  = "./terraform"

  cluster_name    = "eks-karpenter"
  cluster_version = "1.29"

}


