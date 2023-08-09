resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet-cidr-block
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = var.availability-zone

  tags = merge(
    var.tags,
    {
      Name = "${var.project}-${var.environment}-public-${var.name}"
    }
  )
}
