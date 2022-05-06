variable "tenancy_ocid" {
}

variable "user_ocid" {
  default = ""
}

variable "fingerprint" {
}

variable "private_key_path" {
  default = ""
}

variable "ssh_public_key" {
  default = ""
}

variable "compartment_ocid" {
}

variable "region" {
}

variable "instance_shape" {
  default = "VM.Standard.A1.Flex" # Or VM.Standard.E2.1.Micro
}

variable "instance_ocpus" { default = 2 }

variable "instance_shape_config_memory_in_gbs" { default = 12 }