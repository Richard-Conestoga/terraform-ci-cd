provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami = "ami-09ac0b140f63d3458"
  instance_type = "t2.micro"
  count = var.core_count
  tags = {
    Name = "ExampleInstance"
  }
}
