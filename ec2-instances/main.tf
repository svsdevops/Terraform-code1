provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (replace with your preferred AMI)
  instance_type = "t2.micro"               # Instance type (adjust as needed)

  tags = {
    Name = "prometheus-server"
  }
}

