![Logo](https://autoscaleupinfra-buckets.s3.ap-northeast-1.amazonaws.com/1.png?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEHgaCmFwLXNvdXRoLTEiRzBFAiEArvjtoCQOyS0UUaYg9iuoDTzlT9dcAZsrFMhqH7WhRkECICYc0exc6U4C3r7jkgt04f9F%2Feds5%2B867eiSdBd6NHkpKu0CCNH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMODM0Mjc3NzY3NDM2IgzD2wylrkOqA1M9rgsqwQKdB2dOXEwxTk3rcw5eeoWvsZMqSizn%2FiEK5sqzSnWbbJXovNwBSFgSJW8E4WClk13wWepFObrGwBDf6HejBN1ozg%2BhuivCOSx5bEjhmy%2FvoKmoV%2Bt%2FrnIffXsQajjbwpRe3rswK1YosvR2%2BJbvFIy6Q33l4JVdE9e30ldorSE6ION3x4Jk0%2FAa4ZgZFBcuLIP9m%2BbCITnq8RMH6p0bAvUu%2FrflKkPlgNWIGWL3vWqp2RBJSrJq5JlOC%2BsUL9aud%2FW1WqV3hyxeBJAsWBKWKjzxuQP6NvD5DZQUmietpsagP7bJ300FbVJj3HBg826aJgWTHlxPaB5fYo8TV1H5Ah%2BFRk7oiNnjYqwStNiAaESbYjvZZzKCRqJV%2FPqpnxgrjakwphQT3xaLSxg0kcl567VCBfBRt%2F3KhH9xxDBemmZgoCEwz4fQpAY6swJAzZGvPhKv0Q7Kzz8lQjUgqvGzgAqbj115jp9hpZw3U%2BpxgJIGEWBuY1PZbcvpA12tuTw2HXWDCFh3TTKdOxapzc%2B%2BUPcBlP65fSZlacEUFeswiV4ujEvbQTvTrgvOYAO6mluh9wIBqn0XHnLIikbv3XlVlP%2BIe4dzdkC0oGwEDDnK5tVChCwlYA%2FYo2axu8pRx3qKyWKJ5J4ddok8uVxvpXk1Dz3%2FPqjFqbWfiOs%2FxtZUDlBHGpFOmJBGxbCjTSppw3VDCo1y2COP6CokHMG8lJAXL%2BMLe0%2FmsvIdJy%2Fk6TbqXA1oCJzvEUY4N%2F%2BthylubX7DOf3jdVl4Ejv2cd9fJJhBRzOefZiopOoymZqfVl9LLQe6SeBhCbhKml7fpYfd5se29t3hNsTynkrDmCfHgtwp&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230622T102749Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA4EPWUPEGC2EZKCF7%2F20230622%2Fap-northeast-1%2Fs3%2Faws4_request&X-Amz-Signature=aa25867addd41652a115235bdce59790c9c03fb62c30d44598baa8a5844fec72)


## Badges

[![Terraform AWS](https://github.com/ScaleupInfra/terraform-aws-s3-bucket/actions/workflows/main.yml/badge.svg)](https://github.com/ScaleupInfra/terraform-aws-s3-bucket/actions/workflows/main.yml)


# Terraform AWS S3 Creation Module

This Terraform module enables you to create AWS S3 buckets programmatically using Terraform. With this module, you can automate the process of creating multiple S3 buckets with configurable settings.

## Features

- Creates a set of S3 buckets - The count attribute is used to create a set of buckets, where the number of buckets is equal to the length of the var.bucket_names variable.

- Configures the bucket properties - The acl attribute sets the access control list for the buckets, and the force_destroy attribute ensures that the buckets are deleted even if there are still objects in them.

- Configures versioning - The versioning block enables versioning for the buckets.

- Configures server-side encryption - The server_side_encryption_configuration block enables server-side encryption for the buckets, and specifies the encryption algorithm to use.

- Configures lifecycle rules - The lifecycle_rule block configures a lifecycle rule for the buckets. The rule specifies that objects should be transitioned to a different storage class after a certain number of days.

## Here are some additional details about the features:

- The count attribute is a special attribute that is used to create a set of resources. In this case, the count attribute is used to create a set of S3 buckets, where the number of buckets is equal to the length of the var.bucket_names variable.

- The acl attribute sets the access control list for the buckets. The access control list determines who has access to the buckets and what permissions they have.

- The force_destroy attribute ensures that the buckets are deleted even if there are still objects in them. This is important because it prevents orphaned objects from being left behind.

- The versioning block enables versioning for the buckets. Versioning allows you to keep multiple versions of objects in the buckets. This can be useful for data protection and auditing purposes.

- The server_side_encryption_configuration block enables server-side encryption for the buckets. Server-side encryption encrypts objects before they are stored in the buckets. This helps to protect the confidentiality of your data.

- The lifecycle_rule block configures a lifecycle rule for the buckets. The lifecycle rule specifies how objects should be transitioned to different storage classes over time. This can help you to optimize your storage costs.

## Usage

To use this module, include the following code in your Terraform configuration:

``` hcl
module "s3" {
    source = "./s3-module"
}
```

Customize the module name like s3 or with the names of the module which is according to your preference. Adjust source with the name of the folder which contains all the code.
For example here, i have created a folder with the name "s3-module".

## Requirements

- Terraform latest version 
- AWS Account (a trial account would work)
- GitHub Personal Access Token with appropriate permissions (if you want to create CI/CD pipeline through Github Action)

## Inputs


| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
[Environment](#input\_Environment) | Put the Environment according to your preference | `string` | `"Production"` | no |
[bucket\_names](#input\_bucket\_names) | Put the name of the bucket according to your preference | `list(string)` | ["infrasity1", "infrasity2",  "infrasity3"] | no |
[days](#input\_days) | Choose the no. of days of lifecycle_rule according to your preference| `list` | [30, 60, 365] | no |
[sse\_algorithm](#input\_sse\_algorithm) | Choose the sse_algorithm according to your needs | `string` | `"AES256"` | no |
[storage\_class](#input\_storage\_class) | Select the strorage class according to your needs | `list(string)` | ["STANDARD_IA","GLACIER"] | no |


## Outputs

## Run Locally

Clone the project

```bash
  git clone https://github.com/ScaleupInfra/terraform-aws-s3-bucket.git
```

Go to the project directory

```bash
  cd terraform-aws-s3-bucket
  teraform init
  terraform plan 
  teraform apply -auto-approve
```

Destroy Infrastructrre  dependencies

```bash
  terraform destroy -auto-approve
```



## Support

Come join our Open Source Community on [Slack](https://app.slack.com/huddle/T05EL2WSB2M/C05EL2WTMA5). It's completely FREE! Our community is the perfect platform for infrastructure enthusiasts like you. Engage in discussions, seek advice, share your ideas, and collaborate with fellow community members to build scalable and robust infrastructure solutions. Don't miss out on this opportunity to be a part of our thriving community!

## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/)



## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.










