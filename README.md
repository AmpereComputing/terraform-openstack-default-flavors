![Ampere Computing](https://avatars2.githubusercontent.com/u/34519842?s=400&u=1d29afaac44f477cbb0226139ec83f73faefe154&v=4)

This repo will be archived in 30 days from 11/28.  This is in an effort to keep a clean and timely Github presence for Ampere computing.  As a result of the archiving  any issues, pull requests, code, labels, milestones, projects, wiki, releases, commits, tags, branches, reactions, code scanning alerts, comments and permissions become read-only.
 
Please plan accordingly or reach out to repo owner with concerns.
 
Thank you.
 
-Ampere Computing

# terraform-openstack-default-flavors

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)


## Description

Terraform module to enable some default flavors after an installation of openstack.  Default values were translated from the init-runonce scripts.

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
