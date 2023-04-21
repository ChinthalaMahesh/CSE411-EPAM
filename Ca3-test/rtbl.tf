# Creating Route Table
resource "aws_route_table" "mahi-route" {
  vpc_id = "${aws_vpc.my-vpc.id}"
route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.mahesh-Internet-gateway.id}"
  }
tags = {
      Name = "Mahesh(11907444)-Route to internet"
  }
}
# Associating Route Table
resource "aws_route_table_association" "mahesh-rt1" {
  subnet_id = "${aws_subnet.pub-sub1-mahesh.id}"
  route_table_id = "${aws_route_table.mahi-route.id}"
}