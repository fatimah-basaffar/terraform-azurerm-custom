resource "tls_private_key" "ssh_key" {

  algorithm = var.algorithm
  
  rsa_bits = var.rsa_bits

}

resource "local_file" "private_key" {
  filename = "${azurerm_linux_virtual_machine.vm.name}.pem" 
  content  = tls_private_key.ssh_key.private_key_pem
}