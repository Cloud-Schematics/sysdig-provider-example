# Configure alerts and dashboard for Monitoring services

This module contains an example for how to use the [Sysdig Terraform Provider](https://registry.terraform.io/providers/sysdiglabs/sysdig/latest/docs) with [IBM Cloud Monitoring with Sysdig](https://www.ibm.com/cloud/sysdig).

## Table of Contents

1. [Setup](##setup)
2. [Resources](##Resources)
3. [Variables](##Variables)

## Setup

In order to use the Sysdig provider, you must [retrieve your Sysdig API token](https://docs.sysdig.com/en/retrieve-the-sysdig-api-token.html) from the GUI.

## Resources

This example creates:

- A Sysdig Monitor Team
- A Sysdig Alert Event
- A Sysdig Monitor Dashboard

## Variables

Variable                 | Type   | Description                                                               | Default
------------------------ | ------ | ------------------------------------------------------------------------- |--------
ibm_region               | string | IBM Cloud region where all resources will be deployed                     |
sysdig_monitor_api_token | string | The API token for you sysdig instance. This must be gotten from the GUI   |
team_name                | string | Team name to create                                                       | `"Terraform Example Team"`
