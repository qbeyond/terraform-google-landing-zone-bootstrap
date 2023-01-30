variable "billing_account_id" {
  description = "Billing account id."
  type        = string
}
variable "billing_account_organization_id" {
  description = "organization id of billing account."
  type        = number
}

variable "domain" {
  description = "Organization domain."
  type        = string
}

/* variable "organization" {
  description = "Organization details."
  type = object({
    domain      = string
    id          = number
    customer_id = string
  })
} */

variable "bootstrap_user" {
  description = "User running this example. This account will be assigned to some permissions. This is only supposed to be run one time!"
  type = string
}