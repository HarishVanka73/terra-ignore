variable "ec2" {
  type = map(object({
    ami = string
  }))
}
variable "instance_type" {
  type = string
}
