variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "onid" {
  description = "ONID/GitHub"
  type        = string
  default     = "nechypak"
}

variable "key_name" {
  description = "AWS EC2 key"
  type        = string
}

variable "admin_ssh_cidr" {
  description = "CIDR allowed to SSH into the control node"
  type        = string
  default     = "0.0.0.0/0"
}

variable "minecraft_client_cidr" {
  description = "CIDR allowed to connect to Minecraft TCP 25565"
  type        = string
  default     = "0.0.0.0/0"
}

variable "control_instance_type" {
  description = "EC2 instance type at control node"
  type        = string
  default     = "t3.micro"
}

variable "minecraft_instance_type" {
  description = "EC2 instance type at Minecraft server"
  type        = string
  default     = "t3.small"
}

variable "control_root_volume_gib" {
  description = "EBS volume size for the control node in GiB"
  type        = number
  default     = 20
}

variable "minecraft_root_volume_gib" {
  description = "EBS volume size for the Minecraft server in GiB"
  type        = number
  default     = 20
}

variable "ecr_repository_name" {
  description = "ECR repo name"
  type        = string
  default     = "ops3-minecraft-lab"
}

variable "minecraft_image_tag" {
  description = "Minecraft image tag"
  type        = string
  default     = "mc-java21-v1"
}

variable "backup_bucket_name" {
  description = "S3 bucket for Minecraft backups."
  type        = string
  default     = "ops3-nechypak-minecraft-backups"
}

variable "backup_retention_days" {
  description = "Retention rule"
  type        = number
  default     = 7
}
