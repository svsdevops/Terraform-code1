provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

variable "instance_name" {
   type = list(string)
   default = ["prometheus-server", "prometheus-agent"}
}


resource "aws_instance" "example_instance" {
  count = length(var.instance_name)
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (replace with your preferred AMI)
  instance_type = "t2.micro"               # Instance type (adjust as needed)
  key_name = "Jenkins"

  tags = {
    Name = var.instance_name[count.index]
  }
}

