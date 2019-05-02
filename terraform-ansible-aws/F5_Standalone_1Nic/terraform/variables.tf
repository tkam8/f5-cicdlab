variable "owner" {
  description = "Name of the owner of this deployment (no space)"
  default = "terrydemo"
}

variable "project_name" {
  description = "Name of the project related to this VPC"
  default = "TestTerraform"
}

variable "aws_profile" {
  default = "f5jptest"
}

variable "aws_az1" {
  default = "ap-northeast-1a"
}

variable "aws_az2" {
  default = "ap-northeast-1c"
}

variable "aws_region" {
  default = "ap-northeast-1"
}
variable "key_path" {
  description = "SSH Public Key path"
  default = "/var/tmp/terry_cicd1.pub"
}

variable "AllowedIPs1" {
  description = "Public IPs used to access your instances"
  default = "210.226.41.200/29"
}

variable "AllowedIPs2" {
  description = "Public IPs used to access your instances"
  default = "3.112.24.99/32"         
}

## Please check and update the latest DO URL from https://github.com/F5Networks/f5-declarative-onboarding/releases
variable DO_URL	{ 
  default = "https://github.com/nmenant/Public-Cloud-Templates/raw/Development/tools/f5-declarative-onboarding-1.3.0-3.noarch.rpm"
}

## Please check and update the latest AS3 URL from https://github.com/F5Networks/f5-appsvcs-extension/releases/latest 
variable AS3_URL {
  default = "https://github.com/F5Networks/f5-appsvcs-extension/releases/download/v3.10.0/f5-appsvcs-3.10.0-5.noarch.rpm" 
}

variable "f5_instance_type" {
  default = "m5.xlarge"
}
variable "app_tag_value" {
  description = "Value assigned to the tag key Application - will be used by AS3 Service Discovery"
  default = "www-NGINX"
}
