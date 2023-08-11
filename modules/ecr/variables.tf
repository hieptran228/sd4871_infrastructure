variable "repos" {
  type    = list(any)
  default = []
}

variable "enable_scan_on_push" {
  type    = bool
  default = true
}

variable "name" {
  type    = string
  default = ""
}


variable "project" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = ""
}

variable "owner" {
  type    = string
  default = ""
}