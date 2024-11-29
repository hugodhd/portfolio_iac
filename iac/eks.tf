module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "18.29.0"

  cluster_name    = "eks-cluster"
  cluster_version = "1.26"

  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.small"
    }
  }

  tags = {
    Environment = "PoC"
  }
}
