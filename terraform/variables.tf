variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access by provisioners"
}

variable disk_image {
  description = "Disk image"
}

variable username {
  description = "User name"
}

variable app_zone {
  default     = "europe-west1-b"
  description = "Zone for gcp"
}
