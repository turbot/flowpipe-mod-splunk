pipeline "create_search_job" {
  title       = "Create Search Job"
  description = "Create a Search Job."

  tags = {
    type = "featured"
  }

  param "access_token" {
    type        = string
    default     = var.access_token
    description = "Access token to authenticate requests with Splunk."
  }

  param "server" {
    type        = string
    default     = var.splunk_server
    description = "The Splunk server."
  }

  param "search_query" {
    type        = string
    description = "The query to be searched."
  }

  param "insecure" {
    type        = bool
    description = "Disable TLS verification."
  }

  step "http" "create_search_job" {
    method   = "post"
    insecure = param.insecure
    url      = "https://${param.server}:8089/services/search/v2/jobs/?output_mode=json"

    request_headers = {
      Content-Type  = "application/json"
      Authorization = "Splunk ${param.access_token}"
    }

    request_body = jsonencode({
      search = param.search_query
    })
  }

  output "search" {
    value = step.http.create_search_job.response_body
  }
}