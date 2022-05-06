/* Instances */

// Instance: "kaveri"
resource "oci_core_instance" "free_instance0" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "kaveri"
  shape               = "VM.Standard.A1.Flex"

  shape_config {
    ocpus = var.instance_ocpus
    memory_in_gbs = var.instance_shape_config_memory_in_gbs
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.test_subnet.id
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "kaveri"
  }

  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.flex.images[0], "id")
  }

  metadata = {
    ssh_authorized_keys = (var.ssh_public_key != "") ? var.ssh_public_key : tls_private_key.compute_ssh_key.public_key_openssh
  }
}

// Instance: "godavari"
resource "oci_core_instance" "free_instance1" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "godavari"
  shape               = "VM.Standard.A1.Flex"

  shape_config {
    ocpus = 2
    memory_in_gbs = 12
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.test_subnet.id
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "godavari"
  }

  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.flex.images[0], "id")
  }

  metadata = {
    ssh_authorized_keys = (var.ssh_public_key != "") ? var.ssh_public_key : tls_private_key.compute_ssh_key.public_key_openssh
  }
}

// Instance: "krishna"
resource "oci_core_instance" "free_instance2" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "krishna"
  shape               = "VM.Standard.E2.1.Micro"

  shape_config {
    ocpus = 1
    memory_in_gbs = 1
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.test_subnet.id
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "krishna"
  }

  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.micro.images[0], "id")
  }

  metadata = {
    ssh_authorized_keys = (var.ssh_public_key != "") ? var.ssh_public_key : tls_private_key.compute_ssh_key.public_key_openssh
  }
}

// Instance: "narmada"
resource "oci_core_instance" "free_instance3" {
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "narmada"
  shape               = "VM.Standard.E2.1.Micro"

  shape_config {
    ocpus = 1
    memory_in_gbs = 1
  }

  create_vnic_details {
    subnet_id        = oci_core_subnet.test_subnet.id
    display_name     = "primaryvnic"
    assign_public_ip = true
    hostname_label   = "narmada"
  }

  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.micro.images[0], "id")
  }

  metadata = {
    ssh_authorized_keys = (var.ssh_public_key != "") ? var.ssh_public_key : tls_private_key.compute_ssh_key.public_key_openssh
  }
}
