# outputs is to outsource resouces atributes

output "vpc_id" {
    description = "vpc id"
    sensitive = false
  value = aws_vpc.black.id
}
output "public_ip" {
    description = "public ip"
    value = aws_instance.blackweb.public_ip
  
}