

# Terraform AWS VPC Module

This module creates an **Amazon Virtual Private Cloud (VPC)** in AWS with the following components:
- A VPC with a specified CIDR block.
- Public and private subnets across multiple availability zones.
- An Internet Gateway.
- Route tables and associations for public and private subnets.
- Custom tagging with support for default and environment-specific tags.

---

## **Usage**

To use this module, include the following in your Terraform configuration:

```hcl
module "vpc" {
  source             = "srikanth-karthi/vpc/aws"
  region             = "us-east-1"
  environment        = "dev"
  vpc_cidr           = "10.0.0.0/16"
  vpc_name           = "my-vpc"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets    = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  default_tags = {
    Project = "my-project"
    Owner   = "srikanth"
  }
}

```

---

## **Inputs**

| Name                 | Description                                                  | Type          | Default   | Required |
|----------------------|--------------------------------------------------------------|---------------|-----------|----------|
| `region`             | AWS region to deploy resources                               | `string`      | n/a       | Yes      |
| `default_tags`       | A map of default tags to apply to all resources              | `map(string)` | `{}`      | No       |
| `vpc_cidr`           | The CIDR block for the VPC                                   | `string`      | n/a       | Yes      |
| `vpc_name`           | The name of the VPC                                          | `string`      | n/a       | Yes      |
| `public_subnets`     | A list of CIDR blocks for public subnets                     | `list(string)`| n/a       | Yes      |
| `private_subnets`    | A list of CIDR blocks for private subnets                    | `list(string)`| n/a       | Yes      |
| `availability_zones` | A list of availability zones for the subnets                 | `list(string)`| n/a       | Yes      |
| `environment`        | The environment (e.g., dev, staging, prod)                   | `string`      | n/a       | Yes      |

---

## **Outputs**

| Name                  | Description                                  |
|-----------------------|----------------------------------------------|
| `vpc_id`              | The ID of the created VPC                   |
| `public_subnet_ids`   | List of IDs for the public subnets           |
| `private_subnet_ids`  | List of IDs for the private subnets          |
| `internet_gateway_id` | The ID of the created Internet Gateway       |

---

## **Requirements**

### **Providers**
| Name | Version   |
|------|-----------|
| aws  | `~> 5.0`  |

---

## **Example Output**

After applying the configuration, the following outputs will be returned:

```bash
Outputs:
vpc_id = "vpc-0abcd1234ef56789"
public_subnet_ids = [
  "subnet-01234abcd5678efgh",
  "subnet-09876abcd5432wxyz"
]
private_subnet_ids = [
  "subnet-1234efgh5678abcd",
  "subnet-4321wxyz8765abcd"
]
internet_gateway_id = "igw-012345abcdef67890"
```

---

## **How to Deploy**

1. Clone this module repository:
   ```bash
   git clone https://github.com/srikanth-karthi/terraform-aws-vpc.git
   ```

2. Create a Terraform configuration that calls this module.

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

5. Review the outputs.

---

## **License**

This module is licensed under the MIT License.

---

## **Contributions**

Contributions are welcome! Please open an issue or submit a pull request if you have improvements.

# terraform-aws-vpc
