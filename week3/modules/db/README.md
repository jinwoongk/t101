# db

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | ../network | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.myrds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.mydbsubnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name to use for the database | `string` | `"tstudydb"` | no |
| <a name="input_password"></a> [password](#input\_password) | The password for the database | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The username for the database | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_address"></a> [address](#output\_address) | Connect to the database at this endpoint |
| <a name="output_port"></a> [port](#output\_port) | The port the database is listening on |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
