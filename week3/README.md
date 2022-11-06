# week3

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.33.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db"></a> [db](#module\_db) | ./modules/db | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_TF_ROLE_NAME"></a> [TF\_ROLE\_NAME](#input\_TF\_ROLE\_NAME) | 각 계정에 TF 프로비저닝을 하기 위한 IAM Role(dev 계정의 IAM 유저(TFCUser)를 통해 Assume) | `string` | n/a | yes |
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Shared 계정의 Account ID | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | The name to use for the database | `string` | `"tstudydb"` | no |
| <a name="input_db_pass"></a> [db\_pass](#input\_db\_pass) | The password for the database | `string` | n/a | yes |
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | The username for the database | `string` | n/a | yes |
| <a name="input_nickname"></a> [nickname](#input\_nickname) | nickname | `string` | `"jinwoong"` | no |
| <a name="input_region"></a> [region](#input\_region) | default region | `string` | `"ap-northeast-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpcid"></a> [vpcid](#output\_vpcid) | My VPC Id |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
