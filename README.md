# An example data center architecture with Terraform

A lightweight data center architecture.

## Usage

Checkout the repository and all sub-modules:

```bash
git clone --recursive https://github.com/edesibe/tf_dc.git
```

The rough directory tree should be:

```
.
├── README.md
├── development/
│   ├── api.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── web.tf
├── modules/
│   ├── api/
│   │   ├── README.md
│   │   ├── files/
│   │   │   └── api_bootstrap.sh
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── remote_state/
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── vpc/
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── web/
│       ├── README.md
│       ├── files/
│       │   └── web_bootstrap.sh
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── production/
    ├── main.tf
    ├── terraform.tfvars
    ├── variables.tf
    └── web.tf
```
