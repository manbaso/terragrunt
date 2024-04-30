include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/servers"
}

inputs = {
    
    public_subnet_cidr_block = "10.0.4.0/24"
    private_subnet_cidr_block = "10.0.5.0/24"
    private_ip = ["10.0.4.10", "10.0.4.11", "10.0.4.12", "10.0.4.13"]
    instance_types = ["t2.medium", "t2.micro", "t2.micro", "t2.micro"]
    security_group_name = "prod"
    security_group_description = "dev group"
    security_group_ports = [22, 8080, 9000]
    instance_tag = "prod"
    instance_count = 1
    vpc_cidr_block   = "10.3.0.0/16"
}