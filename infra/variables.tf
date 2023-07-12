variable "environment" {
  type = map(string)
  default = {
    "production" = true,
    "staging"    = true
  }
}

variable "env_cblocks" {
  type = map(string)
  default = {
    "production" = "10.0.0.0/16"
    "staging"    = "192.168.0.0/16"
  }
}

