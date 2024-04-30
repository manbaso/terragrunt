output "instance_info" {
  value = {
    for instance in aws_instance.monitoring : instance.tags["Name"] => {
      public_ip = instance.public_ip
      public_dns = instance.public_dns
      tag      = instance.tags

    }
  }
}