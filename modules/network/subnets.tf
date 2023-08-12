resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public-subnet-cidr-block-dev
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = var.availability-zones[0]

  tags = merge(
    var.tags,
    {
      Name = "${var.project}-${var.environment}-public-${var.name}"
    }
  )
}

resource "aws_subnet" "private" {
  for_each = var.private-subnet-cidr-block-dev
  vpc_id   = aws_vpc.vpc.id
  cidr_block              = each.value
  map_public_ip_on_launch = "false"
  availability_zone       = var.availability-zones[each.key]

  tags = merge(
    var.tags,
    {
      Name = "${var.project}-${var.environment}-private-${var.name}-${each.key}"
    }
  )
}