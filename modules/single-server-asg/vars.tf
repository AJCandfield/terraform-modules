# --------------------------
# REQUIRED INPUTS
# --------------------------
variable "asg_name" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = string
}

variable "asg_key_name" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = string
}

variable "asg_vpc_zone_identifier" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = list(string)
}

variable "asg_availability_zones" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = string
}

# --------------------------
# OPTIONAL INPUTS
# --------------------------
variable "asg_max_size" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = number
  default     = 1
}

variable "asg_min_size" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = number
  default     = 1
}

variable "asg_desired_capacity" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = number
  default     = 1
}

variable "asg_instance_type" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = string
  default     = "t3a.micro"
}

variable "asg_disable_api_termination" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = bool
  default     = false
}

variable "asg_ebs_optimized" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = bool
  default     = true
}

variable "asg_health_check_grace_period" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = number
  default     = 120
}

variable "asg_health_check_type" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = string
  default     = "EC2"
}

variable "asg_instance_initiated_shutdown_behavior" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = string
  default     = "terminate"
}

variable "asg_max_instance_lifetime" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = number
  default     = 86400
}

variable "asg_user_data" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = string
  default     = ""
}

variable "asg_use_name_prefix" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = bool
  default     = true
}

variable "asg_tags" {
  description = <<-EOF
  "
  
  "
  EOF
  type        = map(string)
  default     = { "Created by" : "Terraform" }
}
