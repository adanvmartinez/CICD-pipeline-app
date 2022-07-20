module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "17.24.0"
    cluster_name = "terrafrom-lab-cluster"
    cluster_version = "1.22"
    subnets = [aws_subnet.terrafrom-lab-subnet.id]

    vpc_id = aws_vpc.terrafrom-lab-vpc.id

    node_groups ={
        desired_capacity = 3
        max_capacity = 3
        min_capacity = 3
    }
}

data "aws_eks_cluster" "cluster" {
    name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
    name = module.eks.cluster_id
}