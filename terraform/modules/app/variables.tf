variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access by provisioners"
}

variable username {
  description = "User name"
}

variable app_zone {
  default     = "europe-west1-b"
  description = "Zone for gcp"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable target_tag {
  description = "Target tag for instance"
}
