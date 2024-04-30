data "aws_vpc" "monitoring" {
  id = var.vpc_id
}

# # Create internet gateway
# resource "aws_internet_gateway" "monitoring" {
#   vpc_id = aws_vpc.monitoring.id
# }



# # Create private subnet
# resource "aws_subnet" "private" {
#   vpc_id     = data.aws_vpc.monitoring.id
#   cidr_block = var.private_subnet_cidr_block
# }


# Create public subnets
resource "aws_subnet" "public" {
  
  vpc_id                  = data.aws_vpc.monitoring.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
}
# # Create internet gateway
# resource "aws_internet_gateway" "monitoring" {
#   vpc_id = data.aws_vpc.monitoring.id
# }

# data "aws_internet_gateway" "monitoring" {
#   internet_gateway_id = var.internet_gateway_id 
# }

# Create route table for public subnet
resource "aws_route_table" "public" {
  vpc_id = data.aws_vpc.monitoring.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }
}




# Create route tables
resource "aws_route_table" "public_route_table" {
  # count = length(aws_subnet.public)
  vpc_id = data.aws_vpc.monitoring.id
}

# Create route table associations
resource "aws_route_table_association" "public_route_table_association" {
  # count          = length(aws_subnet.public)
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}