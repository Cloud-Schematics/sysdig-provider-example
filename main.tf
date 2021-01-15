#############################################################################
# Create a Team
#############################################################################

resource sysdig_monitor_team example {

  name = var.team_name

  entrypoint {
    type = "Explore"
  }

}

#############################################################################


#############################################################################
# Create an Alert
# This is an example directly from the Sysdig Terraform Provider Documentation
#############################################################################

resource sysdig_monitor_alert_event example {
    name = "[Kubernetes] Failed to pull image"
    description = "A Kubernetes pod failed to pull an image from the registry"
    severity = 4

    event_name = "Failed to pull image"
    source = "kubernetes"
    event_rel = ">"
    event_count = 0

    trigger_after_minutes = 1
}

#############################################################################


#############################################################################
# Create a Dashboard
# This is an example directly from the Sysdig Terraform Provider Documentation
#############################################################################

resource sysdig_monitor_dashboard dashboard {
  name        = "Example Dashboard"
  description = "Example Dashboard description"

  panel {
    pos_x       = 0
    pos_y       = 0
    width       = 12 # Maximum size: 24
    height      = 6
    type        = "timechart" # timechart or number
    name        = "Example panel"
    description = "Description"

    query {
      promql = "avg(avg_over_time(sysdig_host_cpu_used_percent[$__interval]))"
      unit   = "percent"
    }
    query {
      promql = "avg(avg_over_time(sysdig_host_cpu_used_percent[$__interval]))"
      unit   = "number"
    }
  }

  panel {
    pos_x       = 12
    pos_y       = 0
    width       = 12
    height      = 6
    type        = "number"
    name        = "example panel - 2"
    description = "description of panel 2"

    query {
      promql = "avg(avg_over_time(sysdig_host_cpu_used_percent[$__interval]))"
      unit   = "time"
    }
  }

  panel {
    pos_x                  = 12
    pos_y                  = 12
    width                  = 12
    height                 = 6
    type                   = "text"
    name                   = "example panel - 2"
    content                = "description of panel 2"
    visible_title          = true
    autosize_text          = true
    transparent_background = true
  }
}

#############################################################################