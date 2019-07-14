terraform {
  # Версия terraform﻿
  required_version = "~> 0.11.07"
}

provider "google" {
  # Версия провайдера
  version = "2.0.0"

  # ID проекта
  project = "${var.project}"

  region = "${var.region}"
}

module "app" {
  source           = "../modules/app"
  public_key_path  = "${var.public_key_path}"
  private_key_path = "${var.private_key_path}"
  app_zone         = "${var.app_zone}"
  app_disk_image   = "${var.app_disk_image}"
  username         = "${var.username}"
  target_tag       = "${var.main_app_tag}"
}

module "db" {
  source          = "../modules/db"
  public_key_path = "${var.public_key_path}"
  app_zone        = "${var.app_zone}"
  db_disk_image   = "${var.db_disk_image}"
  username        = "${var.username}"
  app_tag         = "${var.main_app_tag}"
}

module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["${var.source_range}"]
}
