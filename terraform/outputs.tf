#-----------------------------
# Networking Outputs
#-----------------------------
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private[*].id
}

#-----------------------------
# Security Group Outputs
#-----------------------------
output "bastion_sg_id" {
  description = "Security Group ID for the Bastion host"
  value       = aws_security_group.bastion.id
}

output "app_sg_id" {
  description = "Security Group ID for the App servers"
  value       = aws_security_group.app.id
}

#-----------------------------
# EC2 Instance Outputs
#-----------------------------
output "bastion_public_ip" {
  description = "Public IP address of the Bastion host"
  value       = aws_instance.bastion.public_ip
}

output "app_private_ips" {
  description = "List of private IP addresses of the App servers"
  value       = aws_instance.app[*].private_ip
}

#-----------------------------
# Helper Outputs
#-----------------------------
output "bastion_ssh_command" {
  description = "Quick SSH command to connect to the Bastion host"
  value       = "ssh -i ~/.ssh/id_rsa ec2-user@${aws_instance.bastion.public_ip}"
}