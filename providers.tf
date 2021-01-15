##############################################################################
# Terraform Providers
# This block is required for every module in Terraform 0.13.x
##############################################################################

terraform {
  required_providers {
    sysdig = {
      source = "sysdiglabs/sysdig"
      version = "0.5.9"
    }
  }
}

#############################################################################


#############################################################################
# Sysdig Provider
#############################################################################

provider sysdig {
  sysdig_monitor_api_token = var.sysdig_monitor_api_token
  sysdig_monitor_url       = "https://${var.ibm_region}.monitoring.cloud.ibm.com"
}

#############################################################################