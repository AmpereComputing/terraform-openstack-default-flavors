resource "openstack_compute_flavor_v2" "m1-tiny" {
  count = var.enable_m1_tiny ? 1:0
  name  = "m1.tiny"
  ram   = "1024"
  vcpus = "1"
  disk  = "1"
  is_public = "1"

# extra_specs = {
#   "hw:cpu_policy"        = "CPU-POLICY",
#   "hw:cpu_thread_policy" = "CPU-THREAD-POLICY"
# }
}
resource "openstack_compute_flavor_v2" "m1-small" {
  count = var.enable_m1_small ? 1:0
  name  = "m1.small"
  ram   = "2048"
  vcpus = "1"
  disk  = "20"
  is_public = "1"

# extra_specs = {
#   "hw:cpu_policy"        = "CPU-POLICY",
#   "hw:cpu_thread_policy" = "CPU-THREAD-POLICY"
# }
}
resource "openstack_compute_flavor_v2" "m1-medium" {
  count = var.enable_m1_medium ? 1:0
  name  = "m1.medium"
  ram   = "4096"
  vcpus = "2"
  disk  = "40"
  is_public = "1"

# extra_specs = {
#   "hw:cpu_policy"        = "CPU-POLICY",
#   "hw:cpu_thread_policy" = "CPU-THREAD-POLICY"
# }
}
resource "openstack_compute_flavor_v2" "m1-large" {
  count = var.enable_m1_large ? 1:0
  name  = "m1.large"
  ram   = "8192"
  vcpus = "4"
  disk  = "80"
  is_public = "1"

# extra_specs = {
#   "hw:cpu_policy"        = "CPU-POLICY",
#   "hw:cpu_thread_policy" = "CPU-THREAD-POLICY"
# }
}
resource "openstack_compute_flavor_v2" "m1-xlarge" {
  count = var.enable_m1_xlarge ? 1:0
  name  = "m1.xlarge"
  ram   = "16834"
  vcpus = "8"
  disk  = "160"
  is_public = "1"

# extra_specs = {
#   "hw:cpu_policy"        = "CPU-POLICY",
#   "hw:cpu_thread_policy" = "CPU-THREAD-POLICY"
# }
}
