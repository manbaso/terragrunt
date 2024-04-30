output "vpc_id" {
  value = aws_vpc.monitoring.id
    
  
}

output "internet_gateway_id" {
  value = aws_internet_gateway.monitoring.id
}