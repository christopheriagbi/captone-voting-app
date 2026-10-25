
output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.voting.name
}

output "cluster_endpoint" {
  description = "EKS Kubernetes API endpoint"
  value       = aws_eks_cluster.voting.endpoint
}

output "cluster_status" {
  description = "Current status of the EKS cluster"
  value       = aws_eks_cluster.voting.status
}

output "aws_region" {
  description = "AWS region used by Terraform"
  value       = var.aws_region
}

output "vpc_id" {
  description = "Default VPC used by the cluster"
  value       = data.aws_vpc.default.id
}

output "subnet_ids" {
  description = "Subnet IDs used by EKS"
  value       = data.aws_subnets.default.ids
}

output "node_group_name" {
  description = "Managed worker node group name"
  value       = aws_eks_node_group.voting.node_group_name
}

output "node_role_arn" {
  description = "IAM role assigned to worker nodes"
  value       = aws_iam_role.eks_node_role.arn
}
