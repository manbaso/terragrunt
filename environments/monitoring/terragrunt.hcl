include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/servers"
}

inputs = {
    
    public_subnet_cidr_block = "10.0.3.0/24"
    private_subnet_cidr_block = "10.0.5.0/24"
    private_ip = ["10.0.3.10", "10.0.3.11", "10.0.3.12", "10.0.3.13"]
    instance_types = ["t2.medium", "t2.micro", "t2.micro", "t2.micro"]
    security_group_name = "monitoring"
    security_group_description = "monitoring group"
    security_group_ports = [22, 3000, 9090]
    instance_tag = "monitoring"
    instance_count = 1
    vpc_cidr_block   = "10.2.0.0/16"
    
}