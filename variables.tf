# Copyright (c) 2022 Aaron Lake
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

variable "region" {
  type        = string
  description = "The region to deploy the cluster to."
}

variable "clustername" {
  type        = string
  description = "The name of the cluster."
}
