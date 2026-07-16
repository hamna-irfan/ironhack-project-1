terraform{
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}
provider "aws" {
    region = var.aws_region
}
resource "aws_vpc" "main"{
    cidr_block ="10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        Name = "hamna-${var.project_name}-vpc"
    }
}
resource "aws_internet_gateway" "main" {
    vpc_id = aws_vpc.main.id

    tags = {
    Name = "hamna-${var.project_name}-igw"
    }
}