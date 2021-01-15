##############################################################################
# Account Variables
##############################################################################

variable ibm_region {
    description = "IBM Cloud region where all resources will be deployed"
    type        = string
}

variable sysdig_monitor_api_token {
    description = "The API token for you sysdig instance. This must be gotten from the GUI"
    type        = string
}

variable team_name {
    description = "Team name to create"
    type        = string
    default     = "Terraform Example Team"
}

##############################################################################