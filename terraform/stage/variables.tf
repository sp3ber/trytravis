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

variable db_disk_image {
  description = "Disk image for reddit database"
  default     = "reddit-db-base"
}

variable main_app_tag {
  description = "Reddit app tag"
  default     = "reddit-app"
}

variable source_range {
  description = "Source range for vpc"
  default     = "0.0.0.0/0"
}
