terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
 
 provider "aws" {
  region     = "ap-south-1"
  access_key = 

resource "aws_instance" "S1" {
  ami           = "ami-0376ec8eacdf70aae"
  instance_type = "t2.micro"

  tags = {
    Name = "server1"
  }
user_data = <<-EOF
               #!/bin/bash
               sudo apt-get update
               sudo apt-get install -y apache2
               sudo systemctl start apache2
               sudo systemctl enable apache2
               echo "The page was created by the user data" | sudo tee /var/www/html/index.html
	       
