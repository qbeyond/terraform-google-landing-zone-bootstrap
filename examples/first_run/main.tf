data "google_organization" "this" {
  domain = var.domain
}

module "bootstrap" {
  source         = "../.."
  bootstrap_user = var.bootstrap_user
  organization = {
    domain      = data.google_organization.this.domain
    id          = data.google_organization.this.org_id
    customer_id = data.google_organization.this.directory_customer_id
  }
  prefix      = "testpre"
  billing_account = {
    id              = var.billing_account_id
    organization_id = var.billing_account_organization_id
  }
}
