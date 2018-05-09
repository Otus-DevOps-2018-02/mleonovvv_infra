variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable private_key_path {
  description = "Path to the private key used to connect to instance"
}

variable zone {
  description = "Zone"
}

variable bind_address {
  description = "Zone"
  default     = "0.0.0.0"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "db-base"
}
