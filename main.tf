data "http" "echoip" {
  url             = var.http_url
  request_headers = var.http_request_headers
  method          = var.http_method
  insecure        = startswith(var.http_url, "http://")

  lifecycle {
    postcondition {
      condition     = contains([200, 201, 204], self.status_code)
      error_message = "Status code invalid"
    }
  }
}
