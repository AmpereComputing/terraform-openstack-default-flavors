# CentOS
resource "null_resource" "download-extract-image-centos-7-aarch64" {
  provisioner "local-exec" {
    command = "${path.module}/centos_image.sh 7"
  }
}
resource "openstack_images_image_v2" "centos_7_aarch64_raw" {
  count = var.enable_centos_7_aarch64_raw ? 1:0
  name   = "centos-7-aarch64-GenericCloud-raw"
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
resource "openstack_images_image_v2" "centos_7_aarch64_qcow2" {
  count = var.enable_centos_7_aarch64_qcow2 ? 1:0
  name   = "centos-7-aarch64-GenericCloud-qcow2"
  local_file_path = "${pathexpand("~/.terraform/image_cache/CentOS-7-aarch64-GenericCloud.qcow2")}"
  container_format = "bare"
  disk_format = "qcow2"
  depends_on = [
    "null_resource.download-extract-image-centos-7-aarch64",
  ]
  properties = {
    os_distro = "centos"
  }
}
