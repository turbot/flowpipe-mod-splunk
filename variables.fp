variable "splunk_auth_token" {
  type        = string
  description = "Auth token to authenticate requests with Splunk."
  default     = ""
}

variable "splunk_server" {
  type        = string
  description = "The Splunk server."
}