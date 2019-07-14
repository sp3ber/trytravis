variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable username {
  description = "User name"
}

variable app_zone {
  default     = "europe-west1-b"
  description = "Zone for gcp"
}

variable db_disk_image {
  description = "Disk image for reddit database"
  default     = "reddit-db-base"
}

variable app_tag {
  description = "Tag for main app"
}
