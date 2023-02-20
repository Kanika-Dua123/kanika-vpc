# Creating vpc
resource "aws_vpc" "kanika-vpc" {
  cidr_block       = "172.16.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name    = "kanika_vpc"
    Owner   = "kanika.dua@cloudeq.com"
    Purpose = "training"
  }
}
