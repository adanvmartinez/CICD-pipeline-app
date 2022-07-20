
//Creation of the subnet we will be working with in AWS
resource "aws_subnet" "terraform-lab-subnet" {
    vpc_id = aws_vpc.terraform-lab-vpc.id
    cidr_block = "10.0.1.0/24" //CIDR block must be string
    availability_zone = "us-west-1a"
    tags = {
        "Name" = "terraform-lab-subnet1"
    }
}

resource "aws_subnet" "terraform-lab-subnet2" {
    vpc_id = aws_vpc.terraform-lab-vpc.id
    cidr_block = "10.0.2.0/24" //CIDR block must be string
    availability_zone = "us-west-1b"
    tags = {
        "Name" = "terraform-lab-subnet2"
    }
}

