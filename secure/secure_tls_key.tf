resource "tls_private_key" "ssh_key" {

  algorithm = var.algorithm
  
  rsa_bits = var.rsa_bits

}

resource "local_file" "private_key" {

  filename = var.filename

  content  = tls_private_key.ssh_key.private_key_pem
}