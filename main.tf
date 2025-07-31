provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami = "ami-0bcb08446fd149731"
  instance_type = "t2.micro"
  count = var.core_count
  tags = {
    Name = "ExampleInstance"
  }
}
