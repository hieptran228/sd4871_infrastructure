locals {
    rds = {
        default-db = {
            db_name                 = "bookstore"
            db_subnet_group_name    = data.terraform_remote_state.network.outputs.db-subnet-group.name
            vpc_security_group_ids  = [data.terraform_remote_state.network.outputs.security-groups.default-rds]
            allocated_storage       = "20"
            engine                  = "sqlserver-ex"
            engine_version          = "15.00"
            instance_class          = "db.t3.medium"
            password                = var.default_db_password
        }
    }
}