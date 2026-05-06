variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  #default = "ami-04b70fa74e45c3917" 
  default = "ami-02dd44faa40720bb8" 
  # Ubuntu 24.04 LTS for ap-southeast-1
}
