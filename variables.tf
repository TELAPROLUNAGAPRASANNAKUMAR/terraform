variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}
 
variable "instance_name" {
  type = list
  default = ["MongoDb", "Cart", "Catalogue", "User", "Redis", "Mysql", "RabbitMQ", "Shipping", "Payment", "web"]
  
}

variable "zone_id" {
  default = "Z06746132JLA6MJEOENJA"
  
}

variable "domain" {
  default = "joindevops.art"
  
}
