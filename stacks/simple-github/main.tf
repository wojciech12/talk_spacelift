variable "github_owner" {
  type = string
}
provider "github" {
  owner = var.github_owner
}

variable "repos" {
  description = "repos_to_be_created"
  type = map(object({
    name                = string
    description         = string
  }))
}

resource "github_repository" "my_repo" {
  name        = "tf_sp_example"
  description = "My new repository for Terraform"

  visibility = "public"
}

resource "github_repository" "repos" {
  for_each = tomap(var.repos)
  name        = each.key
  description = each.value
  visibility = "public"
}
