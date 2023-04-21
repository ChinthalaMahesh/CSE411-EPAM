# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "mahesh-instance1" {
  ami                         = "ami-02396cdd13e9a1257 "
  instance_type               = "t2.micro"
  key_name                    = "ansible-key"
  vpc_security_group_ids      = ["${aws_security_group.mahesh-sg.id}"]
  associate_public_ip_address = true
tags = {
  Name = "Mahesh(11907444)"
}
}