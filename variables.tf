variable "org" {
  type    = string
  default = ""
  description = "Organization Name"
}

variable "svc" {
  type        = string
  default     = ""
  description = "Service Name"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "Environment Name"
}

variable "loc1" {
  type        = string
  default     = "UK South"
  description = "Location"
}

variable "loc2" {
  type        = string
  default     = "UK West"
  description = "Location"
}