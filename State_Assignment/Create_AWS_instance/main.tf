provider "aws" {
   region = "us-east-2"
 }
 
 terraform {
   backend "s3" {
     bucket = "terraform-s3-backend-mahesh"
     key = "terraform-backend-terraform_aws.tfstate"
     region = "us-east-2"
     dynamodb_table = "Mahesh-s3-backend-locking"
     encrypt = true
   }
 }
 
 resource "aws_instance" "terraform_aws_ec2_mahesh" {
   ami = "ami-0103f211a154d64a6"
   instance_type = "t2.micro"
 }

 output "public_ip" {
  value = aws_instance.terraform_aws_ec2_mahesh.public_ip
}