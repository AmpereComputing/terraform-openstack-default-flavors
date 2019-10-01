resource "null_resource" "download-extract-image-bionic" {
  count = var.enable_ubuntu ? 1:0
  provisioner "local-exec" {
    command = "${path.module}/ubuntu_image.sh bionic"
  }
}
resource "openstack_images_image_v2" "ubuntu-1804-bionic" {
  count = var.enable_ubuntu ? 1:0
  name   = "ubuntu-18.04-bionic-server-cloudimg-arm64"
  local_file_path = "${pathexpand("~/.terraform/image_cache/bionic-server-cloudimg-arm64-disk1.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-bionic"
  ]
  properties = {
    os_distro = "ubuntu"
  }
}

resource "null_resource" "download-extract-image-xenial" {
  count = var.enable_ubuntu ? 1:0
  provisioner "local-exec" {
    command = "${path.module}/ubuntu_image.sh xenial"
  }
}
resource "openstack_images_image_v2" "ubuntu-1604-xenial" {
  count = var.enable_ubuntu ? 1:0
  name   = "ubuntu-16.04-xenial-server-cloudimg-arm64"
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
resource "null_resource" "download-extract-image-trusty" {
  provisioner "local-exec" {
    command = "${path.module}/ubuntu_image.sh trusty"
  }
}
resource "openstack_images_image_v2" "ubuntu-1404-trusty" {
  count = var.enable_ubuntu ? 1:0
  name   = "ubuntu-14.04-trusty-server-cloudimg-arm64"
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
