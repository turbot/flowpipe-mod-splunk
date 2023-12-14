variable "splunk_auth_token" {
  type        = string
  description = "Auth token to authenticate requests with Splunk."
  default     = "eyJraWQiOiJzcGx1bmsuc2VjcmV0IiwiYWxnIjoiSFM1MTIiLCJ2ZXIiOiJ2MiIsInR0eXAiOiJzdGF0aWMifQ.eyJpc3MiOiJzb3VyYXYgZnJvbSBTb3VyYXZzLU1hY0Jvb2stUHJvLmxvY2FsIiwic3ViIjoic291cmF2IiwiYXVkIjoidGVzdCIsImlkcCI6IlNwbHVuayIsImp0aSI6ImYxMGM2YmQ4OTIyODc2MTM3OTQzYmZkZmQ4NGQ5ODNlMzNkNTEyNGIwZTUyODM2ZjUwMWJlZjE4N2VlNTU4ZDYiLCJpYXQiOjE3MDI1NTI4NjksImV4cCI6MTcwNTE0NDg2OSwibmJyIjoxNzAyNTUyODY5fQ.NXOHeHeF3OdJPRcZ52YZAQgt2OJbCLjkUf6nfzLHFQNSYbD7ikjkOA5tDyo_dNzkufcb-2E_aA8jddGK0yiw9g"
}

variable "splunk_server" {
  type        = string
  description = "The Splunk server."
}