# CentOS
resource "null_resource" "download-extract-image-centos-7-aarch64" {
  count = var.enable_centos ? 1:0
  provisioner "local-exec" {
    command = "${path.module}/centos_image.sh 7"
  }
}
resource "openstack_images_image_v2" "centos7_aarch64" {
  count = var.enable_centos ? 1:0
  name   = "centos-7-aarch64-GenericCloud"
  local_file_path = "${pathexpand("~/.terraform/image_cache/CentOS-7-aarch64-GenericCloud.raw")}"
  container_format = "bare"
  disk_format = "raw"
  depends_on = [
    "null_resource.download-extract-image-centos-7-aarch64",
  ]

  properties = {
    os_distro = "centos"
  }
}
