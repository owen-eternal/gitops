variable "environment" {
  type = map(any)
  default = {
    "production" = {
      "apply"      = true
      "network_id" = "10.0.0.0/16"
      "subnets" = {
        "web_aza" = {
          "network_id"              = "10.0.0.0/18"
          "map_public_ip_on_launch" = true
          "availability_zone"       = "eu-west-1a"
        },
        "web_azb" = {
          "network_id"              = "10.0.64.0/18"
          "map_public_ip_on_launch" = true
          "availability_zone"       = "eu-west-1b"
        },
        "data_aza" = {
          "network_id"              = "10.0.128.0/18"
          "map_public_ip_on_launch" = false
          "availability_zone"       = "eu-west-1a"
        },
        "data_azb" = {
          "network_id"              = "10.0.192.0/18"
          "map_public_ip_on_launch" = false
          "availability_zone"       = "eu-west-1b"
        }
      }
    },
    "staging" = {
      "apply"      = true
      "network_id" = "192.168.0.0/16"
      "subnets" = {
        "web_aza" = {
          "network_id"              = "192.168.0.0/18"
          "map_public_ip_on_launch" = true
          "availability_zone"       = "eu-west-1a"
        },
        "web_azb" = {
          "network_id"              = "192.168.64.0/18"
          "map_public_ip_on_launch" = true
          "availability_zone"       = "eu-west-1b"
        },
        "data_aza" = {
          "network_id"              = "192.168.128.0/18"
          "map_public_ip_on_launch" = false
          "availability_zone"       = "eu-west-1a"
        },
        "data_azb" = {
          "network_id"              = "192.168.192.0/18"
          "map_public_ip_on_launch" = false
          "availability_zone"       = "eu-west-1b"
        }
      }
    }
  }
}
