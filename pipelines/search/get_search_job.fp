pipeline "get_search_job" {
  title       = "Get Search Job"
  description = "Get a search Job details."

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

  param "search_job_id" {
    type        = string
    description = "The search Job ID."
  }

  param "insecure" {
    type        = bool
    description = "Disable TLS verification."
  }

  step "http" "get_search_job" {
    method   = "post"
    insecure = param.insecure
    url      = "https://${param.server}:8089/services/search/v2/jobs/${param.search_job_id}/?output_mode=json"

    request_headers = {
      Content-Type  = "application/json"
      Authorization = "Splunk ${param.access_token}"
    }
  }

  output "search" {
    value = step.http.get_search_job.response_body
  }
}