include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/servers"
}

inputs = {
    
    
    public_subnet_cidr_block = "10.0.1.0/24"
    private_subnet_cidr_block = "10.0.5.0/24"
    private_ip = ["10.0.1.10", "10.0.1.11", "10.0.1.12", "10.0.1.13"]
    instance_types = ["t2.medium", "t2.micro", "t2.micro", "t2.micro"]
    security_group_name = "build"
    security_group_description = "build group"
    security_group_ports = [22, 8080, 9000]
    instance_tag = "build"
    instance_count = 2
    vpc_cidr_block   = "10.0.0.0/16"
        
  
}