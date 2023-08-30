provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    token = "${var.AWS_SESSION_TOKEN}"
    region = "${var.region}"
  
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "myfirst"
  role_arn = "arn:aws:iam::809977396697:role/LabRole"
  
  vpc_config {
    subnet_ids = ["subnet-0d3889b6a27bd0458"]
  }

  depends_on = []
}

resource "aws_eks_node_group" "eks_nodes" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "nodes"
  node_role_arn   = "arn:aws:iam::809977396697:role/LabRole"

  subnet_ids = ["subnet-0d3889b6a27bd0458"]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 1
  }

  depends_on = [aws_eks_cluster.eks_cluster]
}