variable "vpc_id" {
    type = "string"
}
variable "aws_region" {
  type = "string"
}
variable "f5_subnet1_id" {
  type = "string"
}
variable "key_name" {
  type = "string"
}
variable "AllowedIPs1" {
  type = "string"
}
variable "AllowedIPs2" {
  type = "string"
}

variable "bigip_https_port" {
    description = "TCP Port use to access BIG-IP GUI or API"
    default = "8443"
}

variable "owner" {
  type = "string"
}

variable libs_dir { 
  default = "/config/cloud/aws" 
}
variable onboard_log { 
  default = "/var/log/startup-script.log" 
}

variable AS3_URL {
  type = "string"
}

variable DO_URL {
  type = "string"
}

variable "f5_instance_type" {
  type = "string"
}

