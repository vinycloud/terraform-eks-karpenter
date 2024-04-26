# provider "kubernetes" {
#   host                   = aws_eks_cluster.cluster.endpoint
#   cluster_ca_certificate = base64decode(aws_eks_cluster.cluster.certificate_authority.0.data)
#   exec {
#     api_version = "client.authentication.k8s.io/v1beta1"    
#     args = ["eks", "get-token", "--cluster-name", aws_eks_cluster.cluster.id]
#     command     = "aws"
#   }
# }

# resource "kubernetes_namespace" "app" {
#   metadata {
#     name = "app"
#   }
# }

# resource "kubernetes_deployment" "nginx" {
#   metadata {
#     name = "nginx-deployment"
#     namespace = "app"
#     labels = {
#       App = "nginx-deployment"
#     }
#   }

#   spec {
#     replicas = 5
#     selector {
#       match_labels = {
#         App = "nginx-deployment"
#       }
#     }
#     template {
#       metadata {
#         labels = {
#           App = "nginx-deployment"
#         }
#       }
#       spec {
#         container {
#           image = "nginx:1.14.2"
#           name  = "nginx"

#           port {
#             container_port = 80
#           }

#           resources {
#             limits = {
#               cpu    = "1"
#               memory = "1Gi"
#             }
#             requests = {
#               cpu    = "1"
#               memory = "1Gi"
#             }
#           }
#         }
#       }
#     }
#   }
# }
