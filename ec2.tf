resource "aws_instance" "kanika-ec2-1" {
  ami                    = "ami-0dfcb1ef8550277af"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.kanika-security.id}"]
  subnet_id              = aws_subnet.kanika-subnet-1.id
  # key_name                    = "kanika"
  count                       = 2
  associate_public_ip_address = true
  tags = {
    Name    = "kanika-ec2-1"
    Owner   = "kanika.dua@cloudeq.com"
    Purpose = "training"
  }

  volume_tags = {
    Name    = "kanika-ec2-1"
    Owner   = "kanika.dua@cloudeq.com"
    Purpose = "training"
  }
}

# ----------------------------------------------------------

#Creating two EC-2 instance in second subnet

resource "aws_instance" "kanika-ec2-2" {
  ami                    = "ami-0dfcb1ef8550277af"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.kanika-security.id}"]
  subnet_id              = aws_subnet.kanika-subnet-2.id

  #key_name                    = "kanika"
  count                       = 2
  associate_public_ip_address = true
  tags = {
    Name    = "kanika-ec2-2"
    Owner   = "kanika.dua@cloudeq.com"
    Purpose = "training"
  }

  volume_tags = {
    Name    = "kanika-ec2-2"
    Owner   = "kanika.dua@cloudeq.com"
    Purpose = "training"
  }
}


