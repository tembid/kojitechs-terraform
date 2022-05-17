variable "cidr_block"{
    type =string
    description = "vpc cidr block"
    default = "10.0.0.0/16"
}

variable "region" {
    type = string
    description = "region value"
    default = "us-east-1"
  
}

variable "aws_subnet" {
    default = "websubnet"
  
}
variable "ami_id" {
    default = "ami-0022f774911c1d690"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "tag_id" {
    default = "blackweb"
  
}

variable "subnet_cidr" {
    default = "10.0.1.0/24"
  
}

variable "tag_web" {
    default = "websubnet"
  
}

variable "appsubnet_cidr" {
    default = "10.0.2.0/24"
  
}

variable "tag_app" {
    default = "appsubnet"
  
}
  
