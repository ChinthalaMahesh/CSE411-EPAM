# Application loadbalancer
resource "aws_lb" "external-alb-mahesh" {
  name               = "Mahesh11907444"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.mahesh-sg.id]
  subnets            = [aws_subnet.pub-sub1-mahesh.id, aws_subnet.pub-sub2-mahesh.id ]
}
resource "aws_lb_target_group" "target-elb-mahesh" {
  name     = "Mahesh11907444"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my-vpc.id
}
resource "aws_lb_target_group_attachment" "target-elb-mahesh" {
  target_group_arn = aws_lb_target_group.target-elb-mahesh.arn
  target_id        = aws_instance.mahesh-instance1.id
  port             = 80
depends_on = [
  aws_instance.mahesh-instance1,
]
}