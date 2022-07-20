resource "aws_internet_gateway" "terraform-lab-gateway" {
    vpc_id = aws_vpc.terraform-lab-vpc.id

    tags = {
        Name = "terraform-lab-gateway"
    }
}