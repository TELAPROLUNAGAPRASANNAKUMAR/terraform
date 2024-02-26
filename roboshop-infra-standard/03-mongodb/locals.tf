locals {
  db_subnet_id = element(split(",", data.aws_ssm_parameter.database_subnet_ids.value),0)
}

# we have two db subnets, based on cama we split that then it turned to list from that 0 index