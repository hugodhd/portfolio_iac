output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "nginx_load_balancer" {
  value = kubernetes_service.nginx.status[0].load_balancer.ingress[0].hostname
}

output "rds_endpoint" {
  value = aws_db_instance.rds.endpoint
}
