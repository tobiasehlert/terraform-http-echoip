output "asn" {
  description = "The `asn` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).asn
}

output "asn_org" {
  description = "The `asn_org` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).asn_org
}

output "city" {
  description = "The `city` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).city
}

output "country" {
  description = "The `country` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).country
}

output "country_eu" {
  description = "The `country_eu` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).country_eu
}

output "country_iso" {
  description = "The `country_iso` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).country_iso
}

output "ip" {
  description = "The `ip` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).ip
}

output "ip_decimal" {
  description = "The `ip_decimal` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).ip_decimal
}

output "latitude" {
  description = "The `latitude` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).latitude
}

output "longitude" {
  description = "The `longitude` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).longitude
}

output "region_code" {
  description = "The `region_code` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).region_code
}

output "region_name" {
  description = "The `region_name` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).region_name
}

output "time_zone" {
  description = "The `time_zone` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).time_zone
}

output "user_agent" {
  description = "The `user_agent` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).user_agent
}

output "zip_code" {
  description = "The `zip_code` field of the echoip response."
  value       = jsondecode(data.http.echoip.response_body).zip_code
}
