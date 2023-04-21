# Creating security  Group for load balancer
resource "aws_security_group" "mahesh-sg" {
  name        = "Mahesh(11907444) Database SG"
  description = "Allow inbound traffic from application layer"
  vpc_id      = aws_vpc.my-vpc.id
ingress {
  description     = "Allow traffic from application layer"
  from_port       = 3306
  to_port         = 3306
  protocol        = "tcp"
}
egress {
  from_port   = 32768
  to_port     = 65535
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
tags = {
  Name = "Mahesh11907444"
}
}