# Create subnets
resource "aws_subnet" "kanika-subnet-1" {
  vpc_id                  = aws_vpc.kanika-vpc.id
  cidr_block              = "172.16.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name    = "kanika-subnet1"
    Owner   = "kanika.dua@cloudeq.com"
    Purpose = "training"
  }
}


resource "aws_subnet" "kanika-subnet-2" {
  vpc_id                  = aws_vpc.kanika-vpc.id
  cidr_block              = "172.16.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name    = "kanika-subnet2"
    Owner   = "kanika.dua@cloudeq.com"
    Purpose = "training"
  }
}
