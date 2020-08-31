![Ampere Computing](https://avatars2.githubusercontent.com/u/34519842?s=400&u=1d29afaac44f477cbb0226139ec83f73faefe154&v=4)

# terraform-openstack-default-flavors

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)


## Description

Terraform module to enable some default flavors after an installation of openstack.

## Usage

```

module "default_flavors" {
  source = "github.com/amperecomputing/terraform-openstack-default-flavors"
  enable_m1_tiny = true
  enable_m1_small = true
  enable_m1_medium = true
  enable_m1_large = true
  enable_m1_xlarge = true
}

```
