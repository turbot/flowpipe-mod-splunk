pipeline "list_search_jobs" {
  title       = "List Search Jobs"
  description = "List all search Jobs."

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

  param "insecure" {
    type        = bool
    description = "Disable TLS verification."
  }

  step "http" "list_search_jobs" {
    method   = "post"
    insecure = param.insecure
    url      = "https://${param.server}:8089/services/search/v2/jobs/?output_mode=json"

    request_headers = {
      Content-Type  = "application/json"
      Authorization = "Splunk ${param.access_token}"
    }
  }

  output "search_jobs" {
    value = step.http.list_search_jobs.response_body
  }
}