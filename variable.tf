#forcing user to providing value.
variable "cidr_block"{

}
#optional,because we gave default value
variable "enable_dns_hostnames"{
    default = true
}
variable "enable_dns_support"{
    default = true
}
variable "common_tags"{
    default = {}          #it is optional but gud to give attach or tags
}
variable "project_name"{

}
variable "vpc_tags"{
    default = {}
}
variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidr"{
    type = list
  validation {
    condition     =  length(var.public_subnet_cidr) == 2   #condition 
    error_message = "please provide 2 public subnet cidr"
  } 
}
variable "private_subnet_cidr"{
    type = list
  validation {
    condition     =  length(var.private_subnet_cidr) == 2   #condition 
    error_message = "please provide 2 private subnet cidr"
  } 
}
variable "database_subnet_cidr"{
    type = list
  validation {
    condition     =  length(var.database_subnet_cidr) == 2   #condition 
    error_message = "please provide 2 database subnet cidr"
  } 
}
variable "nat_gateway_tags"{
    default = {}    #optional.
}
variable "private_route_table_tags"{
      default ={}
}

variable "public_route_table_tags"{
    default = {}
}
variable "database_route_table_tags"{
    default = {}
}
variable "db_subnet_group_tags"{
    default = {}
}
