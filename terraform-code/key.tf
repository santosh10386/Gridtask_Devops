resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}


resource "local_file" "saving_key" {
   content = "${tls_private_key.example.private_key_pem}"
    filename = "${path.module}/${var.key_name}.pem"
    file_permission = "0400"
}
