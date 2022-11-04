output "encrypted_message" {
  sensitive = true
  value = "ANNtC3sYLNi3FDeRp6Vejp9azqDb0cPiZwm8HKEffiEAvsAx69y9dBtkL05F=="
}

output "message_iv" {
  sensitive = true
  value = "1a55754cf8206d0e1da3eaf4bea43ff3"
}

output "message_key" {
  sensitive = true
  value = sha1(substr(var.key_seed, substr(var.key_seed, -3, 2), parseint(substr(var.key_seed, -28, 2), 8)-4))
}
