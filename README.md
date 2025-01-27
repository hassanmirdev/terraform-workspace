# terraform-workspace
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_instance"></a> [ec2\_instance](#module\_ec2\_instance) | ./day-1/modules/resources | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | value | `any` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | value | `map(string)` | <pre>{<br/>  "dev": "t2.nano",<br/>  "production": "t2.nano",<br/>  "staging": "t2.medium"<br/>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->