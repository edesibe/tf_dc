# An example data center architecture with Terraform

A lightweight data center architecture for The Terraform Book.

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
│   ├── vpc/
│   └── web/
│       ├── README.md
│       ├── files/
│       │   ├── app_bootstrap.sh
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

## License

MIT
