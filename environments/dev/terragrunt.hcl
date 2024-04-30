include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/servers"
}

inputs = {
    
    public_subnet_cidr_block = "10.0.2.0/24"
    private_subnet_cidr_block = "10.0.5.0/24"
    private_ip = ["10.0.2.10", "10.0.2.11", "10.0.2.12", "10.0.2.13"]
    instance_types = ["t2.micro", "t2.micro", "t2.micro", "t2.micro"]
    security_group_name = "dev"
    security_group_description = "dev group"
    security_group_ports = [22, 80]
    instance_tag = "dev"
    instance_count = 3
    vpc_cidr_block   = "10.1.0.0/16"
        
}