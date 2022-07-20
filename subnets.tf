resource "aws-subnet" "terraform-lab-subnet" {
    vpc_id = aws_vpc.terraform-lab-vpc.vpc.id
    cidr_block = 10.0.1.0/24
    availability_zone = "us-west-1a"
    tags = {
        "Name" = "terraform-lab-subnet1"
    }
}

