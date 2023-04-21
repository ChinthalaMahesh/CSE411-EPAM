# Creating Internet Gateway 
resource "aws_internet_gateway" "mahesh-Internet-gateway" {
  vpc_id = "${aws_vpc.my-vpc.id}"
}