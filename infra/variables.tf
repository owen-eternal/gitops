####### VPC-Tier Module Variables ########
variable "database" {}
variable "ipaddr" {}
variable "network" {
    type = map()
    default = {
        "staging" = {
           "vid" = "10.0.0.0/16"
            "subnets" = {
                "web" = ["10.0.0.0/18", "10.0.64.0/18"]
                "db"  = []
            }
        },
        "production" = {
            "network" = "172.0.0.0/16"
            "subnets" = {
                "web" = ["172.0.0.0/18", "172.0.64.0/18"]
                "db"  = []
            }
        }
    }
}