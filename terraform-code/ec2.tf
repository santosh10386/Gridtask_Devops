resource "aws_instance" "os" {
  ami           = var.image
  instance_type = var.i_type
  key_name      = var.key_name
  #security_groups = [aws_security_group.allow_http.name]
  vpc_security_group_ids = [ aws_security_group.allow_http.id ]
  subnet_id = var.subnetid
  tags = {
     Name = "myos1"
  }
  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("${path.module}/${var.key_name}.pem")
    host = aws_instance.os.public_ip
  }
  provisioner "remote-exec" {
      inline = [
        "sudo yum install docker java git -y",
        "sudo systemctl start docker",
        "sudo systemctl enable docker",
      ]

  }

}
