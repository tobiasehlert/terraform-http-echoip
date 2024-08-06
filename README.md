# terraform-http-echoip

[![GitHub release](https://img.shields.io/github/v/release/tobiasehlert/terraform-http-echoip?sort=semver&logo=github)](https://github.com/tobiasehlert/terraform-http-echoip/releases)
[![GitHub license](https://img.shields.io/github/license/tobiasehlert/terraform-http-echoip)](https://github.com/tobiasehlert/terraform-http-echoip/blob/main/LICENSE)

Terraform module that returns your external information by any echoip API.

## Features

1. Get your external public IP address (and other related information).
1. Use any echoip APIs ([ipconfig.io](https://ipconfig.io), [ifconfig.co](https://ifconfig.co), etc.).

## Usage

Example mininal usage:

```hcl
module "echoip" {
  source  = "tobiasehlert/echoip/http"
}
```

The modules output can then be used in some other module or resource.

Example of use with DigitalOcean firewall:

```hcl
resource digitalocean_firewall "home_ssh" {
  name = "home_ssh"
  inbound_rule {
    protocol           = "tcp"
    port_range         = "22"
    source_addresses   = ["${module.echoip.ip}/32"]
  }
}
```

## Examples

- [default](https://github.com/tobiasehlert/terraform-http-echoip/blob/main/examples/default/README.md) – This is an example of how to use the module with the defaults.
- [ifconfig.co](https://github.com/tobiasehlert/terraform-http-echoip/blob/main/examples/ifconfig.co/README.md) – This is an example of how to use the module with another echoip service.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | ~> 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [http_http.echoip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | HTTP method to use for the request | `string` | `"GET"` | no |
| <a name="input_http_request_headers"></a> [http\_request\_headers](#input\_http\_request\_headers) | HTTP headers to send with the request | `map(any)` | <pre>{<br>  "Accept": "application/json"<br>}</pre> | no |
| <a name="input_http_url"></a> [http\_url](#input\_http\_url) | URL for echoip service to use. | `string` | `"https://ipconfig.io"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asn"></a> [asn](#output\_asn) | The `asn` field of the echoip response. |
| <a name="output_asn_org"></a> [asn\_org](#output\_asn\_org) | The `asn_org` field of the echoip response. |
| <a name="output_city"></a> [city](#output\_city) | The `city` field of the echoip response. |
| <a name="output_country"></a> [country](#output\_country) | The `country` field of the echoip response. |
| <a name="output_country_eu"></a> [country\_eu](#output\_country\_eu) | The `country_eu` field of the echoip response. |
| <a name="output_country_iso"></a> [country\_iso](#output\_country\_iso) | The `country_iso` field of the echoip response. |
| <a name="output_ip"></a> [ip](#output\_ip) | The `ip` field of the echoip response. |
| <a name="output_ip_decimal"></a> [ip\_decimal](#output\_ip\_decimal) | The `ip_decimal` field of the echoip response. |
| <a name="output_latitude"></a> [latitude](#output\_latitude) | The `latitude` field of the echoip response. |
| <a name="output_longitude"></a> [longitude](#output\_longitude) | The `longitude` field of the echoip response. |
| <a name="output_region_code"></a> [region\_code](#output\_region\_code) | The `region_code` field of the echoip response. |
| <a name="output_region_name"></a> [region\_name](#output\_region\_name) | The `region_name` field of the echoip response. |
| <a name="output_time_zone"></a> [time\_zone](#output\_time\_zone) | The `time_zone` field of the echoip response. |
| <a name="output_user_agent"></a> [user\_agent](#output\_user\_agent) | The `user_agent` field of the echoip response. |
| <a name="output_zip_code"></a> [zip\_code](#output\_zip\_code) | The `zip_code` field of the echoip response. |
<!-- END_TF_DOCS -->

## Credits

- Authors: Tobias Lindberg – [List of contributors](https://github.com/tobiasehlert/terraform-http-echoip/graphs/contributors)
- Distributed under MIT License
