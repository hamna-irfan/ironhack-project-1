locals {
  ubuntu_ami_id = "ami-0a02a779008fa3b99"
}

resource "aws_instance" "frontend" {
  ami                         = local.ubuntu_ami_id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.frontend.id]
  key_name                    = var.key_pair_name
  associate_public_ip_address = true

  tags = {
    Name = "hamna-${var.project_name}-frontend"
  }
}

resource "aws_instance" "backend" {
  ami                    = local.ubuntu_ami_id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.backend.id]
  key_name               = var.key_pair_name

  tags = {
    Name = "hamna-${var.project_name}-backend"
  }
}

resource "aws_instance" "database" {
  ami                    = local.ubuntu_ami_id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.database.id]
  key_name               = var.key_pair_name

  tags = {
    Name = "hamna-${var.project_name}-database"
  }
}
