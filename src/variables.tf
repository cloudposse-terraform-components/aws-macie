variable "account_map_tenant" {
  type        = string
  default     = "core"
  description = "The tenant where the `account_map` component required by remote-state is deployed"
}

variable "admin_delegated" {
  type        = bool
  default     = false
  description = <<DOC
  A flag to indicate if the AWS Organization-wide settings should be created. This can only be done after the Macie
  Administrator account has already been delegated from the AWS Org Management account (usually 'root'). See the
  Deployment section of the README for more information.
  DOC
}

variable "delegated_administrator_account_name" {
  type        = string
  default     = "core-security"
  description = "The name of the account that is the AWS Organization Delegated Administrator account"
}

variable "finding_publishing_frequency" {
  type        = string
  default     = "FIFTEEN_MINUTES"
  nullable    = false
  description = <<-DOC
  Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS
  Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values: FIFTEEN_MINUTES,
  ONE_HOUR, or SIX_HOURS. For more information, see:

  DOC
}

variable "global_environment" {
  type        = string
  default     = "gbl"
  description = "Global environment name"
}

variable "member_accounts" {
  type        = list(string)
  description = "List of member account names to enable Macie on"
  default     = []
  nullable    = false
}

variable "organization_management_account_name" {
  type        = string
  default     = null
  description = "The name of the AWS Organization management account"
}

variable "privileged" {
  type        = bool
  default     = false
  description = "true if the default provider already has access to the backend"
}

variable "region" {
  type        = string
  description = "AWS Region"
}

variable "root_account_stage" {
  type        = string
  default     = "root"
  description = <<-DOC
  The stage name for the Organization root (management) account. This is used to lookup account IDs from account names
  using the `account-map` component.
  DOC
}
