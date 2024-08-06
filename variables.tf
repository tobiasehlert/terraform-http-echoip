variable "http_url" {
  description = "URL for echoip service to use."
  type        = string

  default = "https://ipconfig.io"

  validation {
    condition     = can(regex("https?://", var.http_url))
    error_message = "The `http_url` variable must start either http:// or https://"
  }
}

variable "http_request_headers" {
  description = "HTTP headers to send with the request"
  type        = map(any)

  default = {
    Accept = "application/json"
  }
}

variable "http_method" {
  description = "HTTP method to use for the request"
  type        = string

  default = "GET"
}
