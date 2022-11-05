# db

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.33.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.33.0 |

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
| <a name="input_nickname"></a> [nickname](#input\_nickname) | The name to use for the user nickname | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | The password for the database | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The username for the database | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_address"></a> [address](#output\_address) | Connect to the database at this endpoint |
| <a name="output_port"></a> [port](#output\_port) | The port the database is listening on |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
