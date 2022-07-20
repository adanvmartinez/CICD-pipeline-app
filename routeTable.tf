resource "aws_route_table" "terraform-lab-rt" {
    vpc_id = aws_vpc.terraform-lab-vpc.vpc_id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.terraform-lab-gateway.id
    }
    tags = {
        "Name" = "terraform-lab-rt
    }
}


resource "aws_route_table_association" "terraform-lab-subnet-association" {
  subnet_id = aws_subnet.terraform-lab-subnet.id
  route_table_id = aws_route_table.terraform-lab-rt.id
  
}

resource "aws_main_route_table_association" "terraform-lab-mainRT-association" {
  vpc_id = aws_vpc.terraform-lab-vpc.id
  route_table_id = aws_route_table.terraform-lab-rt.id
  
}