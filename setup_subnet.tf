#Setup Public Subnet
resource "aws_subnet" "aws-demo-Public-Subnet" {
    count = length(var.cidr_public_subnet)
    vpc_id = aws_vpc.vpc-ap-south-1.id
    cidr_block = element(var.cidr_public_subnet,count.index)
    availability_zone = element(var.availability_zone,count.index)

    tags = {
      Name = "Subnet Public : Public Subnet ${count.index+1}"

    }
  
}

#Setup Private Subnet
resource "aws_subnet" "aws-demo-Private-Subnet" {
    count = length(var.cidr_private_subnet)
    vpc_id = aws_vpc.vpc-ap-south-1.id
    cidr_block = element(var.cidr_private_subnet,count.index)
    availability_zone = element(var.availability_zone,count.index)

    tags = {
      Name = "Subnet Private : Private Subnet ${count.index+1}"

    }
  
}

