
# vpc for terraform lab

resource "aws_vpc" "terraform-lab-vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true

    tags = {
        Name = "terraform-lab-vpc"
    }
}