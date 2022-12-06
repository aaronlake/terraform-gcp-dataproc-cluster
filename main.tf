# Copyright (c) 2022 Aaron Lake
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT



terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.45.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "random_uuid" "name" {}

resource "google_dataproc_cluster" "self" {
  name = "${var.clustername}-${random_uuid.name.result}"
}
