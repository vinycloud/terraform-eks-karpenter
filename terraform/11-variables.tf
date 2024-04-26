variable "cluster_name" {
  default = "eks-karpenter"
}

variable "eks_version" {
  default = "1.29"
}

variable "vpc_cni" {
  default = "vpc-cni"
}

variable "core_dns" {
  default = "coredns"
}

variable "kube_proxy" {
  default = "vpc-cni"
}

variable "node_group" {
  default = "private-nodes"
}

variable "cni_version" {
  default = "v1.18.0-eksbuild.1"
}

variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}

variable "private_1a" {
  default = "10.20.0.0/19"
}

variable "private_1b" {
  default = "10.20.32.0/19"
}

variable "public_1a" {
  default = "10.20.64.0/19"
}

variable "public_1b" {
  default = "10.20.96.0/19"
}