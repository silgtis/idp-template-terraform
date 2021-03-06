variable "memory" {
  default = "96"
}

variable "cpu" {
  default = "250"
}

variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  default     = "simplesamlphp"
  description = "Used in ECS service names and logs, best to leave as default."
}

variable "aws_access_key_id" {}

variable "aws_region" {
  description = "Region to deploy in, ex: 'us-east-1'"
}

variable "aws_secret_access_key" {}
variable "cloudflare_email" {}
variable "cloudflare_token" {}
variable "cloudflare_domain" {}

variable "db_name" {
  default     = "ssp"
  description = "Database name, can be changed but default is fine."
}

variable "idp_name" {
  description = "Short name of IdP for logs, something like 'acme'"
}

variable "idp_display_name" {
  description = "Display name of IdP for UI, something like 'ACME Inc.'"
}

variable "logentries_account_key" {}

variable "mysql_user" {
  default     = "ssp"
  description = "MySQL username, can be changed but default is fine."
}

variable "ssp_subdomain" {
  description = "Something like 'acme'"
}

variable "show_saml_errors" {
  default = "false"
}

variable "recaptcha_key" {}
variable "recaptcha_secret" {}

variable "trusted_ip_addresses" {
  type    = "list"
  default = []
}

variable "analytics_id" {
  type = "string"
}

variable "tf_remote_core" {
  description = "Environment name in Terraform Enterprise for core"
}

variable "tf_remote_cluster" {
  description = "Environment name in Terraform Enterprise for cluster"
}

variable "tf_remote_database" {
  description = "Environment name in Terraform Enterprise for database"
}

variable "tf_remote_elasticache" {
  description = "Environment name in Terraform Enterprise for elasticache"
}

variable "tf_remote_ecr" {
  description = "Environment name in Terraform Enterprise for ecr"
}

variable "tf_remote_broker" {
  description = "Environment name in Terraform Enterprise for broker"
}

variable "tf_remote_pwmanager" {
  description = "Environment name in Terraform Enterprise for pwmanager"
}

variable "desired_count" {
  default = "1"
}
