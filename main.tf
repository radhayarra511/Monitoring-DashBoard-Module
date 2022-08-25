resource "google_monitoring_dashboard" "dashboard" {
  project_id   = var.project_id
  dashboard_name = "GCP DashBoard- terraform created"

  chart {
    name = "Agent"
    rank = "3"
    type = "timeseries"

    query {
      query_name = "a"
      display    = "line"
      hidden     = false

      metric              = "agent.googleapis.com/agent/request_count"
      timeseries_operator = "rate"


      group_by {
        aggregation_method = "sum"
        keys               = ["instance_id", ]
      }

    }

  }

  chart {
    name = "agent.googleapis.com/agent/memory_usage"
    rank = "4"
    type = "timeseries"

    query {
      query_name = "a"
      display    = "line"
      hidden     = false

      metric              = "agent.googleapis.com/agent/memory_usage"
      timeseries_operator = "rate"


      group_by {
        aggregation_method = "sum"
        keys               = []
      }

    }

  }

  chart {
    name = "agent.googleapis.com/agent/uptime"
    rank = "5"
    type = "timeseries"

    query {
      query_name = "a"
      display    = "line"
      hidden     = false

      metric              = "agent.googleapis.com/agent/uptime"
      timeseries_operator = "rate"


      group_by {
        aggregation_method = "sum"
        keys               = []
      }

    }

  }

}
