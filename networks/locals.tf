locals {
  security-groups = {
    default-group = {
      ingress = {
        from_port   = "3000"
        to_port     = "3000"
        protocol    = "TCP"
        cidr_blocks = "0.0.0.0/32"
      }
    }
    bastion-host = {
      ingress = {
        from_port   = "22"
        to_port     = "22"
        protocol    = "TCP"
        cidr_blocks = "0.0.0.0/0"
      }
    }
    default-rds = {
      ingress = {
        from_port   = "1433"
        to_port     = "1433"
        protocol    = "TCP"
        cidr_blocks = "0.0.0.0/0"
      }
    }
    test-host = {
      ingress = {
        from_port   = "80"
        to_port     = "80"
        protocol    = "TCP"
        cidr_blocks = "0.0.0.0/0"
      }
    }
  }
}