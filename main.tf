

#terraform block(it is used to set constaint onthe terraform manifest file)


terraform {
  required_providers {
      aws = {
          source ="hashicorp/aws"
          version = "~> 3.0"
      }
  }
}

# providers Block
  
# why do we need provider block(it for authenticationand authorization,create user,create a role,programatic access)
# we make use of aws clito configure secret key

provider "aws" {
    region = var.region
    profile = "default"
  
}

# single account use this
# credentails (file)
# .aws

# resource block
# bring in to existance what u want to creat

#create a vpc
resource "aws_vpc" "black" {
    cidr_block =var.cidr_block

}

resource "aws_subnet" "websubnet" {
  vpc_id     = aws_vpc.black.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = var.tag_web
  }
}

resource "aws_instance" "blackweb" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = aws_subnet.websubnet.id

  tags = {
    Name = var.tag_id
  }
}
# we want outsource the public ip(so make use of the atributes ie arn,id)
# eg aws_instance.blackweb (take note aws_instance.blackweb.public_ip when u need just the ip)
# we want to outsource the vpcid(aws_vpc.black.id)

# local for repetative values
locals {
  vpc_id = aws_vpc.black.id
}

resource "aws_subnet" "appsubnet" {
  vpc_id     = aws_vpc.black.id
  cidr_block = var.appsubnet_cidr

  tags = {
    Name = var.tag_app
  }
}


 
