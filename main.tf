terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Create VPC
/*resource "aws_vpc" "terraform_ref" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Terra_VPC"
  }
}

# Create Subnet
resource "aws_subnet" "pubsub" {
  vpc_id     = aws_vpc.terraform_ref.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "MainSubnet"
  }
}

# Create EC2 Instance
resource "aws_instance" "ec2_ref" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.pubsub.id

  tags = {
    Name = "terr-inst"
  }
}*/
resource "aws_s3_bucket" "test_Ref" {
  bucket = "terraform-test-bucket-1903"

  tags = {
    Name = "TestBucket"
  }
}