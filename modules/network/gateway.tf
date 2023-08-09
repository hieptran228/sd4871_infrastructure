# Public Subnet -> Route table -> Internet Gateway -> Internet
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = var.tags
}

resource "aws_route_table" "public-crt" {
  vpc_id = aws_vpc.vpc.id

  route {
    # machine in this subnet can reach everywhere
    cidr_block = "0.0.0.0/0"
    # CRT uses this GW to reach internet
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project}-${var.name}-${var.environment}-public"
    }
  )
}


resource "aws_route_table_association" "crta-public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public-crt.id
}
