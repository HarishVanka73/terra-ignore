

variable "instances" {
  description = "instance type for instances"
  type = map(object({
    instance_type = string
    ami           = string
  }))
}

