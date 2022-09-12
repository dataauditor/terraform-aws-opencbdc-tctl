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

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Tags to set for all resources"
  default     = {}
}

variable "public_key" {
  type        = string
  description = "The SSH public key from the shared SSH key pair used in launch templates."
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUG5RV4LitBWgkSYhHv2kSsfIbKp0wBum1KEXK7aN6d8FLonile38DBPk4Z6W/H4L5CRcpHd9H0LiN9S+Y609jc7h4kmRkbLVXceNrc5LaDb8c6tsJSphs8dIXI2uyxtW/drkUMIUuJHicHiTo5/uloUXI1+nGGP/jA+apwN5DHcpcKMiTqWhhiuGoQzztzMlQWy3fX1bgN3DWhNyDqObBRIj9Iy+6JVtOd304FO52z+rWCCIG9FWM+oDNWx511OSwaqVQRk0zXoXK/9rYyASIT5tIlChKQ5ojUDx86EX0oLjYssGyXFzjSZCNkCL0D82aRBcaTt2ZbyPBBPdF/S98CDGeiUrmflG2nHbUTEtP4WDnxoJ8YC7jt8OOkJi+2vScRPeQfKCER1kleFqdeWcZb4hLKUPZlu3dp0fwN4DIFO2U0Izmpkoz4L4npgxj9MR3PMd8D5GMkK2MeTT6B2VOdJEGkZPn8SA6CuI+4xWg0Ku+LxFHj0f/kYdD1l+XWGE= ubuntu@ip-172-31-63-164"
}

variable "binaries_s3_bucket" {
  type        = string
  description = "The S3 bukcet where binaries is stored."
}

variable "outputs_s3_bucket" {
  type        = string
  description = "The S3 bucket where outputs are saved."
}

variable "outputs_s3_bucket_arn" {
  type        = string
  description = "The S3 bucket arn where outputs are saved."
}

variable "s3_interface_endpoint" {
  type        = string
  description = "DNS record used to route s3 traffic through s3 vpc interface endpoint"
  default     = ""
}

variable "controller_endpoint" {
  type        = string
  description = "The test controller endpoint where agents phone home."
}

variable "controller_port" {
  type        = string
  description = "The test controller endpoint port where agents phone home."
}

variable "log_group" {
  type        = string
  description = "The Cloudwatch log group to use in the cloudwatch agent config."
}

variable "instance_types" {
  type        = list(string)
  description = "The instance types used in agent launch templates."
}
