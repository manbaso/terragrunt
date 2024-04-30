resource "aws_vpc" "monitoring" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "monitoring"
    Environment = "Monitoring"
    
  }
}

resource "aws_internet_gateway" "monitoring" {
  vpc_id = aws_vpc.monitoring.id
}

# data "aws_vpc" "monitoring" {
#   tags = {
#     Name = "monitoring"  # Assuming you have a tag named "Name" with the value of your VPC name
#   }
# }

# # Create internet gateway
# resource "aws_internet_gateway" "monitoring" {
#   vpc_id = aws_vpc.monitoring.id
# }



# # # Create private subnet
# # resource "aws_subnet" "private" {
# #   vpc_id     = aws_vpc.monitoring.id
# #   cidr_block = var.private_subnet_cidr_block
# # }


# # # Create public subnets
# # resource "aws_subnet" "public" {
  
# #   vpc_id                  = aws_vpc.monitoring.id
# #   cidr_block              = var.public_subnet_cidr_block
# #   map_public_ip_on_launch = true
# # }

# # Create route tables
# resource "aws_route_table" "public_route_table" {
#   # count = length(aws_subnet.public)
#   vpc_id = aws_vpc.monitoring.id
# }

# Create route table associations
# resource "aws_route_table_association" "public_route_table_association" {
#   # count          = length(aws_subnet.public)
#   subnet_id      = aws_subnet.public.id
#   route_table_id = aws_route_table.public_route_table.id
# }