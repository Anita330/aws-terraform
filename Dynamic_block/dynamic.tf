resource "aws_security_group" "dynamic" {
  name        = "dynamic-sg"
  description = "default for vault"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }

}

resource "aws_ec2_instance" "myec2" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
}

resource "aws_elastic_ip" "pubip" {
  domain = "vpc"
}