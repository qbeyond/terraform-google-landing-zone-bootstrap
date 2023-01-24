resource "random_id" "prefix" {
  byte_length = 8
}

data "google_organization" "this" {
  domain = var.domain
}

module "bootstrap" {
  source         = "../.."
  bootstrap_user = var.bootstrap_user
  organization   = data.google_organization.this
  prefix         = random_id.prefix.hex
  billing_account = {
    id              = var.billing_account_id
    organization_id = var.billing_account_organization_id
  }
}
