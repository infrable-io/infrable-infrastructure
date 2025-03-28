# Infrable Infrastructure

[![Maintained by Infrable](https://img.shields.io/badge/Maintained%20by-Infrable-000000)](https://infrable.io)

Core AWS infrastructure for Infrable

## Chicken and Egg Problem

Where does one store the Terraform state of the infrastructure for storing Terraform state? Answer: locally. Before using the Amazon S3 bucket and DynamoDB table created by this module to store its own state, you must first store state on the local filesystem. Thereafter, state can be stored using the S3 backend.

## Terraform Module Documentation

<!-- BEGIN_TF_DOCS -->
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_terraform_aws_eks"></a> [terraform\_aws\_eks](#module\_terraform\_aws\_eks) | git@github.com:infrable-io/terraform-aws-eks | n/a |
| <a name="module_terraform_aws_s3_backend"></a> [terraform\_aws\_s3\_backend](#module\_terraform\_aws\_s3\_backend) | git@github.com:infrable-io/terraform-aws-s3-backend | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_auth_configmap_yaml"></a> [aws\_auth\_configmap\_yaml](#output\_aws\_auth\_configmap\_yaml) | Formatted YAML output of the aws-auth ConfigMap |
| <a name="output_cloudwatch_log_group_arn"></a> [cloudwatch\_log\_group\_arn](#output\_cloudwatch\_log\_group\_arn) | ARN of CloudWatch log group |
| <a name="output_cloudwatch_log_group_name"></a> [cloudwatch\_log\_group\_name](#output\_cloudwatch\_log\_group\_name) | Name of CloudWatch log group |
| <a name="output_cluster_addons"></a> [cluster\_addons](#output\_cluster\_addons) | Map of attribute maps for all enabled EKS cluster add-ons.<br/><br/>For a list of available Amazon EKS add-ons, see the following documentation:<br/>  * https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html |
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | ARN of the EKS cluster |
| <a name="output_cluster_certificate_authority_data"></a> [cluster\_certificate\_authority\_data](#output\_cluster\_certificate\_authority\_data) | Base64-encoded certificate data required to communicate with your cluster |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Endpoint for the Kubernetes API server |
| <a name="output_cluster_iam_role_arn"></a> [cluster\_iam\_role\_arn](#output\_cluster\_iam\_role\_arn) | ARN of the EKS cluster IAM role |
| <a name="output_cluster_iam_role_name"></a> [cluster\_iam\_role\_name](#output\_cluster\_iam\_role\_name) | EKS cluster IAM role.<br/><br/>This role is used by the Kubernetes cluster managed by Amazon EKS to make<br/>calls to other AWS services on your behalf to manage the resources that you<br/>use with the service. |
| <a name="output_cluster_iam_role_unique_id"></a> [cluster\_iam\_role\_unique\_id](#output\_cluster\_iam\_role\_unique\_id) | Stable and unique string identifying the IAM role |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | Name of the cluster |
| <a name="output_cluster_identity_providers"></a> [cluster\_identity\_providers](#output\_cluster\_identity\_providers) | Map of attribute maps for all enabled EKS identity providers |
| <a name="output_cluster_oidc_issuer_url"></a> [cluster\_oidc\_issuer\_url](#output\_cluster\_oidc\_issuer\_url) | Issuer URL for the OpenID Connect identity provider |
| <a name="output_cluster_platform_version"></a> [cluster\_platform\_version](#output\_cluster\_platform\_version) | Platform version for the EKS cluster |
| <a name="output_cluster_security_group_arn"></a> [cluster\_security\_group\_arn](#output\_cluster\_security\_group\_arn) | ARN of the EKS cluster security group |
| <a name="output_cluster_security_group_id"></a> [cluster\_security\_group\_id](#output\_cluster\_security\_group\_id) | EKS cluster security group that is created by Amazon EKS for the cluster.<br/><br/>Managed node groups use this security group for control-plane-to-data-plane<br/>communication.<br/><br/>This security group is referred to as the 'Cluster security group' in the<br/>Amazon EKS console. |
| <a name="output_cluster_status"></a> [cluster\_status](#output\_cluster\_status) | Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED` |
| <a name="output_dynamodb_table"></a> [dynamodb\_table](#output\_dynamodb\_table) | The name of the DynamoDB table for storing Terraform state lock |
| <a name="output_eks_managed_node_groups"></a> [eks\_managed\_node\_groups](#output\_eks\_managed\_node\_groups) | Map of attribute maps for EKS managed node groups |
| <a name="output_oidc_provider_arn"></a> [oidc\_provider\_arn](#output\_oidc\_provider\_arn) | The ARN of the OIDC provider if `enable_irsa = true` |
| <a name="output_s3_bucket"></a> [s3\_bucket](#output\_s3\_bucket) | The name of the S3 bucket for storing Terraform state |
<!-- END_TF_DOCS -->