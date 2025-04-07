data "aws_subnet" "public_subnet" {
  filter {
    name   = "tag:Name"
    values = ["Subnet Public : Public Subnet 1"]
  }

  depends_on = [ 
    aws_route_table_association.public_subnet_association
  ]
}

resource "aws_key_pair" "deployement_key_pair" {
  key_name   = "aws_key"
  public_key = file("${path.module}/YOUR_SSH_KEY")
}

resource "aws_instance" "ec2-instance" {
  ami                    = "ami-0e35ddab05955cf57"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployement_key_pair.key_name
  subnet_id              = data.aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_vpc_ap_south_1.id]

  tags = {
    Name = "Ec2_public_subnet 1"
  }
}

output "ec2_instance_public_ip" {
  value = aws_instance.ec2-instance.public_ip
}
