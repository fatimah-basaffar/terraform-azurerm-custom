output "tls_private_key" {
  value     = tls_private_key.ssh_key.private_key_pem
  sensitive = true
}

output "tls_public_key" {
  value     = tls_private_key.ssh_key.public_key_openssh
  sensitive = false
}