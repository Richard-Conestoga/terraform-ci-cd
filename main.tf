provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
  ami = nonsensitive(data.aws_ssm_parameter.amzn2_linux.value)
  instance_type = "t2.micro"
  count = var.core_count
  tags = {
    Name = "ExampleInstance"
  }
}
