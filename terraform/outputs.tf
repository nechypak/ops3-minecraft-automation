output "control_node_public_ip" {
  description = "Public IP of the Ansible control node"
  value       = aws_instance.control.public_ip
}

output "minecraft_node_public_ip" {
  description = "Public IP of the Minecraft server"
  value       = aws_instance.minecraft.public_ip
}

output "minecraft_node_private_ip" {
  description = "Private IP of the Minecraft server."
  value       = aws_instance.minecraft.private_ip
}

output "minecraft_public_endpoint" {
  description = "Public endpoint for Minecraft clients and nmap"
  value       = "${aws_instance.minecraft.public_ip}:25565"
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.minecraft.repository_url
}

output "backup_bucket_name" {
  description = "S3 bucket"
  value       = aws_s3_bucket.minecraft_backups.bucket
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.ops3.id
}

output "control_security_group_id" {
  description = "Security group ID at control node"
  value       = aws_security_group.control.id
}

output "minecraft_security_group_id" {
  description = "Security group ID at Minecraft node"
  value       = aws_security_group.minecraft.id
}
