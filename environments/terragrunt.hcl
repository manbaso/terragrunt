remote_state {
  backend = "s3"
  config = {
    bucket         = "rancho-backend"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    # dynamodb_table = "my-lock-table"
  }
}

inputs = {
    aws_region = "us-east-1"
    ami = "ami-080e1f13689e07408"
    key_name = "project"
    vpc_id      =   "vpc-0cb289c2daf2912ec"
    internet_gateway_id = "igw-03b2fb429cbb52797"
    # vpc_cidr_block   = "10.0.0.0/16"
    # public_subnet_cidr_block = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24" ]
  
}