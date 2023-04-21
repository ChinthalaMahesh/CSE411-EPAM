resource "aws_subnet" "pub-sub1-mahesh" {
  vpc_id                  = "${aws_vpc.my-vpc.id}"
  cidr_block             = "${var.subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
tags = {
  Name = "Mahesh(11907444) Web Subnet 1"
}
} 
resource "aws_subnet" "pub-sub2-mahesh" {
  vpc_id                  = "${aws_vpc.my-vpc.id}"
  cidr_block             = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
tags = {
  Name = "Mahesh(11907444) Web Subnet 2"
}
}