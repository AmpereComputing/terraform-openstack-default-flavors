# OpenSuSE LEAP
resource "null_resource" "download-extract-image-opensuse-leap-15_1" {
  provisioner "local-exec" {
    command = "${path.module}/opensuse_image.sh"
  }
}

resource "openstack_images_image_v2" "opensuse-leap-151" {
  name   = "OpenSuSE-Leap-15.1"
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
