# Run script to download and extract image file befor uploading to glance
resource "null_resource" "download-extract-image-fedora-server" {
  count = var.enable_fedora ? 1:0
  provisioner "local-exec" {
    command = "${path.module}/fedora_server_image.sh"
  }
}


resource "openstack_images_image_v2" "fedora_server_29_aarch64_raw" {
  count = var.enable_fedora ? 1:0
  name   = "fedora-server-29-aarch64-raw"
  local_file_path = "${pathexpand("~/.terraform/image_cache/Fedora-Server-29-1.2.aarch64.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-fedora-server",
  ]

  properties = {
    key = "value"
    os_distro = "fedora"
  }
}

resource "openstack_images_image_v2" "fedora_server_30_aarch64_raw" {
  count = var.enable_fedora ? 1:0
  name   = "fedora-server-30-aarch64-raw"
  local_file_path = "${pathexpand("~/.terraform/image_cache/Fedora-Server-30-1.2.aarch64.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-fedora-server",
  ]

  properties = {
    key = "value"
    os_distro = "fedora"
  }
}
