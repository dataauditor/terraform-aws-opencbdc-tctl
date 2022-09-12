variable "vpc_id" {
  description = "The VPC id"
  type        = string
  default     = ""
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "hosted_zone_id" {
  type = string
  description = "Route53 hosted zone id of the base domain"
}

variable "public_key" {
  type        = string
  description = "The SSH public key from the shared SSH key pair used in launch templates."
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUG5RV4LitBWgkSYhHv2kSsfIbKp0wBum1KEXK7aN6d8FLonile38DBPk4Z6W/H4L5CRcpHd9H0LiN9S+Y609jc7h4kmRkbLVXceNrc5LaDb8c6tsJSphs8dIXI2uyxtW/drkUMIUuJHicHiTo5/uloUXI1+nGGP/jA+apwN5DHcpcKMiTqWhhiuGoQzztzMlQWy3fX1bgN3DWhNyDqObBRIj9Iy+6JVtOd304FO52z+rWCCIG9FWM+oDNWx511OSwaqVQRk0zXoXK/9rYyASIT5tIlChKQ5ojUDx86EX0oLjYssGyXFzjSZCNkCL0D82aRBcaTt2ZbyPBBPdF/S98CDGeiUrmflG2nHbUTEtP4WDnxoJ8YC7jt8OOkJi+2vScRPeQfKCER1kleFqdeWcZb4hLKUPZlu3dp0fwN4DIFO2U0Izmpkoz4L4npgxj9MR3PMd8D5GMkK2MeTT6B2VOdJEGkZPn8SA6CuI+4xWg0Ku+LxFHj0f/kYdD1l+XWGE= ubuntu@ip-172-31-63-164"
}

variable "certs_efs_id" {
  type        = string
  description = "The EFS ID for the certs volume."
}

variable "testruns_efs_id" {
  type        = string
  description = "The EFS ID for the testruns volume."
}

variable "binaries_efs_id" {
  type        = string
  description = "The EFS ID for the binaries volume."
}

variable "dns_base_domain" {
  type        = string
  description = "DNS Zone name to be used in bastion EIP A record creation."
}

# Tags
variable "environment" {
  type        = string
  description = "AWS tag to indicate environment name of each infrastructure object."
}
