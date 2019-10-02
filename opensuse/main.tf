# OpenSuSE LEAP
resource "null_resource" "download-extract-image-opensuse-leap-15_1" {
  count = var.enable_opensuse_151_aarch64_raw ? 1:0
  provisioner "local-exec" {
    command = "${path.module}/opensuse_image.sh"
  }
}

resource "openstack_images_image_v2" "opensuse_leap_151_raw" {
  count = var.enable_opensuse_151_aarch64_raw ? 1:0
  name   = "openSUSE-leap-15.1-aarch64-raw"
  local_file_path = "${pathexpand("~/.terraform/image_cache/openSUSE-Leap-15.1-OpenStack.aarch64.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-opensuse-leap-15_1",
  ]

  properties = {
    key = "value"
    os_distro = "opensuse"
  }
}
resource "openstack_images_image_v2" "opensuse_leap_151_qcow2" {
  count = var.enable_opensuse_151_aarch64_qcow2 ? 1:0
  name   = "openSUSE-leap-15.1-aarch64-qcow2"
  image_source_url = "https://download.opensuse.org/repositories/Cloud:/Images:/Leap_15.1/images/openSUSE-Leap-15.1-OpenStack.aarch64.qcow2"
  container_format = "bare"
  disk_format = "qcow2"
  properties = {
    key = "value"
    os_distro = "opensuse"
  }
}
