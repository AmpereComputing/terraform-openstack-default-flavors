resource "null_resource" "download-extract-image-bionic" {
  provisioner "local-exec" {
    command = "${path.module}/ubuntu_image.sh bionic"
  }
}
resource "openstack_images_image_v2" "ubuntu_1804_bionic_arm64_raw" {
  count = var.enable_ubuntu_1804_bionic_arm64_raw ? 1:0
  name   = "ubuntu-18.04-bionic-server-cloudimg-arm64-raw"
  local_file_path = "${pathexpand("~/.terraform/image_cache/bionic-server-cloudimg-arm64.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-bionic"
  ]
  properties = {
    os_distro = "ubuntu"
  }
}
resource "openstack_images_image_v2" "ubuntu_1804_bionic_arm64_qcow2" {
  count = var.enable_ubuntu_1804_bionic_arm64_qcow2 ? 1:0
  name   = "ubuntu-18.04-bionic-server-cloudimg-arm64-qcow2"
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/bionic/current/bionic-server-cloudimg-arm64.img"
  container_format = "bare"
  disk_format = "qcow2"
  properties = {
    os_distro = "ubuntu"
  }
}

resource "null_resource" "download-extract-image-xenial" {
  provisioner "local-exec" {
    command = "${path.module}/ubuntu_image.sh xenial"
  }
}
resource "openstack_images_image_v2" "ubuntu_1604_xenial_arm64_raw" {
  count = var.enable_ubuntu_1604_xenial_arm64_raw ? 1:0
  name   = "ubuntu-16.04-xenial-server-cloudimg-arm64-raw"
  local_file_path = "${pathexpand("~/.terraform/image_cache/xenial-server-cloudimg-arm64-disk1.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-xenial"
  ]

  properties = {
    os_distro = "ubuntu"
  }
}
resource "openstack_images_image_v2" "ubuntu_1604_xenial_arm64_qcow2" {
  count = var.enable_ubuntu_1604_xenial_arm64_qcow2 ? 1:0
  name   = "ubuntu-16.04-xenial-server-cloudimg-arm64-qcow2"
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/xenial/current/xenial-server-cloudimg-arm64-disk1.img"
  container_format = "bare"
  disk_format = "qcow2"
  properties = {
    os_distro = "ubuntu"
  }
}

resource "null_resource" "download-extract-image-trusty" {
  provisioner "local-exec" {
    command = "${path.module}/ubuntu_image.sh trusty"
  }
}
resource "openstack_images_image_v2" "ubuntu_1404_trusty_arm64_raw" {
  count = var.enable_ubuntu_1404_trusty_arm64_raw ? 1:0
  name   = "ubuntu-14.04-trusty-server-cloudimg-arm64-raw"
  local_file_path = "${pathexpand("~/.terraform/image_cache/trusty-server-cloudimg-arm64-disk1.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-trusty"
  ]

  properties = {
    os_distro = "ubuntu"
  }
}
resource "openstack_images_image_v2" "ubuntu_1404_trusty_arm64_qcow2" {
  count = var.enable_ubuntu_1404_trusty_arm64_qcow2 ? 1:0
  name   = "ubuntu-14.04-trusty-server-cloudimg-arm64-qcow2"
  image_source_url = "https://cloud-images.ubuntu.com/daily/server/trusty/current/trusty-server-cloudimg-arm64-disk1.img"
  container_format = "bare"
  disk_format = "qcow2"
  properties = {
    os_distro = "ubuntu"
  }
}
